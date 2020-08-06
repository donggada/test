package board;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class BoardDAO {
	
		
		public Connection getConnection() throws Exception {

			String driver = "com.mysql.jdbc.Driver";
			String url = "jdbc:mysql://localhost:3306/jspdb5";
			String user = "root";
			String password = "12345678";
			Class.forName(driver);
			Connection con = DriverManager.getConnection(url, user, password);

			return con;

		}
		
		public void insertboard(BoardDTO b) {
			Connection con =null;
			PreparedStatement ps=null;
			ResultSet rs=null;
			
			try {
				con = getConnection();
				String sql = "select max(num) from board";
				ps = con.prepareStatement(sql);
				rs=ps.executeQuery();
				if(rs.next()){
					b.setNum(rs.getInt("max(num)")+1);
				}
				sql="insert into board(num,name,pass,subject,content,readcount,re_ref,re_lev,re_seq) values(?,?,?,?,?,?,?,?,?)";
				ps=con.prepareStatement(sql);
				ps.setInt(1, b.getNum());
				ps.setString(2, b.getName());
				ps.setString(3, b.getPass());
				ps.setString(4, b.getSubject());
				ps.setString(5, b.getContent());
				ps.setInt(6, b.getReadcount());
				ps.setInt(7, b.getNum());
				ps.setInt(8, 0);
				ps.setInt(9, 0);
				
				ps.executeUpdate();
				

			} catch (Exception e) {
				System.out.println("insert 오류"+e);
			}finally {
			if (ps!=null) {
				try {ps.close();} catch (SQLException e) {}		
			}
			if (con!=null) {
				try {con.close();} catch (SQLException e) {}		
			}	
					
			}

		}
		
		public ArrayList selectboard() {
			Connection con =null;
			PreparedStatement ps=null;
			ResultSet rs=null;
			ArrayList arr=null;
			try {
				con = getConnection();
				String sql = "select *from board order by num desc";
				ps = con.prepareStatement(sql);
				rs=ps.executeQuery();
				arr=new ArrayList();
				while (rs.next()) {
					BoardDTO bd=new BoardDTO();
					bd.setNum(rs.getInt(1));
					bd.setName(rs.getString(2));
					bd.setSubject(rs.getString(4));					
					bd.setContent(rs.getString(5));
					bd.setReadcount(rs.getInt(6));
					
					arr.add(bd);
				}
			} catch (Exception e) {
				System.out.println("selectboard sql구문 오류" +e);
			}
			
			return arr;
			
		}

		
		// int ilke, upload
		public ArrayList likeload(int i) {
			Connection con =null;
			PreparedStatement ps=null;
			ResultSet rs=null;
			ArrayList arr=null;
			String sql="";
			try {	
				con = getConnection();
				sql = "select *from board order by like desc";

				ps = con.prepareStatement(sql);			
				rs=ps.executeQuery();
				arr=new ArrayList();
				while (rs.next()) {
					BoardDTO bd=new BoardDTO();
					bd.setNum(rs.getInt(1));
					bd.setName(rs.getString(2));
					bd.setSubject(rs.getString(4));					
					bd.setContent(rs.getString(5));
					bd.setReadcount(rs.getInt(6));
					
					arr.add(bd);
				
				}
			}catch (Exception e) {
				System.out.println("likeloda오류"+e);
			}
			return arr;
		}
}
