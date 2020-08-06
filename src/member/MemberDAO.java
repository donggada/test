package member;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class MemberDAO {

	public void insertMember(MemberBean m) {
		Connection con =null;
		PreparedStatement ps=null;
		try {
			con = getConnection();
			String sql = "insert into member(id,pass,name) values(?,?,?)";
			ps = con.prepareStatement(sql);
			ps.setString(1, m.getId());
			ps.setString(2, m.getPass());
			ps.setString(3, m.getName());
	
			ps.executeUpdate();

		} catch (Exception e) {

		}finally {
		if (ps!=null) {
			try {ps.close();} catch (SQLException e) {}		
		}
		if (con!=null) {
			try {con.close();} catch (SQLException e) {}		
		}	
			
			
		}

	}

	public MemberBean getmember(String id) {

		MemberBean bb = new MemberBean();
		Connection con =null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		try {
			con = getConnection();
			String sql = "select *from member where id=?";
			ps = con.prepareStatement(sql);
			ps.setString(1, id);
			rs = ps.executeQuery();
			if (rs.next()) {

				bb.setId(rs.getString("Id"));
				bb.setName(rs.getString("name"));
				bb.setPass(rs.getString("password"));
			}
		} catch (Exception e) {

		}finally {
			if (rs!=null) {
				try {rs.close();} catch (SQLException e) {}		
			}			
			if (ps!=null) {
				try {ps.close();} catch (SQLException e) {}		
			}
			if (con!=null) {
				try {con.close();} catch (SQLException e) {}		
			}	
								
					}

		return bb;
	}

	public int userCheck(String id, String pass) {
		int check = -1;
		Connection con =null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		try {
			 con = getConnection();
			String sql = "select *from member where id=?";
			ps = con.prepareStatement(sql);
			ps.setString(1, id);
			rs = ps.executeQuery();
			if (rs.next()) {
				if (pass.equals(rs.getString("password"))) {
					check = 1;
				} else {
					check = -0;
				}
			} else {
				check = -1;
			}

		} catch (Exception e) {
			
		}finally {
			if (rs!=null) {
				try {rs.close();} catch (SQLException e) {}		
			}			
			if (ps!=null) {
				try {ps.close();} catch (SQLException e) {}		
			}
			if (con!=null) {
				try {con.close();} catch (SQLException e) {}		
			}	
								
					}

		return check;
	}

	public void updateMember(MemberBean m) {
		Connection con =null;
		PreparedStatement ps=null;
		try {
			con = getConnection();
			String sql = "update member set password=?, name=? where id=?";
			 ps = con.prepareStatement(sql);
			ps.setString(1, m.getPass());
			ps.setString(2, m.getName());
			ps.setString(3, m.getId());
			ps.executeUpdate();
		} catch (Exception e) {

		} finally {
			if (ps!=null) try {ps.close();} catch (SQLException e) {}		
			if (con!=null) try {con.close();} catch (SQLException e) {}		
			

		}
	}

	public Connection getConnection() throws Exception {

		String driver = "com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/jspdb5";
		String user = "root";
		String password = "1234";
		Class.forName(driver);
		Connection con = DriverManager.getConnection(url, user, password);

		return con;

	}

	public void deleteMember(String id) {
		Connection con =null;
		PreparedStatement ps=null;
		try {
			con = getConnection();
			String sql = "delete from member where id=?";
			ps = con.prepareStatement(sql);
			ps.setString(1, id);
			ps.executeUpdate();
		} catch (Exception e) {

		} finally {
			if (ps!=null) try {ps.close();} catch (SQLException e) {}
		if (con!=null) try {con.close();} catch (SQLException e) {}		
			
			 
		}
	}

	public ArrayList selectMember(int start, int end) {
		MemberBean mb = null;
		ArrayList list = null;
		Connection con =null;
		PreparedStatement ps=null;
		ResultSet rs=null;

		try {
			 con = getConnection();
			String sql = "select *from member limit ?,?";
			 ps = con.prepareStatement(sql);
			 ps.setInt(1, start);
			 ps.setInt(2, end);
			 rs = ps.executeQuery();
			list = new ArrayList();
			while (rs.next()) {
				mb = new MemberBean();
				mb.setId(rs.getString("id"));
				mb.setName(rs.getString("name"));
				mb.setPass(rs.getString("pass"));
				list.add(mb);
			}

		} catch (Exception e) {

		}finally {
			if (rs!=null) {
				try {rs.close();} catch (SQLException e) {}		
			}			
			if (ps!=null) {
				try {ps.close();} catch (SQLException e) {}		
			}
			if (con!=null) {
				try {con.close();} catch (SQLException e) {}		
			}	
								
					}
		return list;
	}

	
public int getcount() {
	Connection con =null;
	PreparedStatement ps=null;
	ResultSet rs=null;
	int i=0;
	try {
		con = getConnection();
		String sql = "select count(*) from member;";
		ps = con.prepareStatement(sql);
		rs = ps.executeQuery();
		if(rs.next()) {
		i=rs.getInt(1);
		}
	} catch (Exception e) {
		System.out.println("getcount 오류"+e);
		
	}
	
	return i;
}
}
