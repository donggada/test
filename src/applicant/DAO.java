package applicant;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class DAO {

	String a="jdbc:mysql://localhost:3306/jspdb5"; 
	String b="root" ;
	String c="1234";
	String driver="com.mysql.jdbc.Driver";
	
	public void ResumeInsert(DTO insert) {
		
			try {
				Class.forName(driver);
				Connection con=DriverManager.getConnection(a, b, c);
				String sql="update appilcant set name=?,ename=?,hp=?,tel=?,bir=?,email=?,addres=?,eas=?,lang=?,highschool=?,university=?,letter1=?,letter2=?,letter3=? where id=?";
				PreparedStatement ps=con.prepareStatement(sql);
				ps.setString(1, insert.getName());
				ps.setString(2, insert.getEngname());
				ps.setString(3, insert.getHp());
				ps.setString(4, insert.getTel());
				ps.setString(5, insert.getBir());
				ps.setString(6, insert.getEmail());
				ps.setString(7, insert.getAddres());
				ps.setString(8, insert.getEas());
				ps.setString(9, insert.getLang());
				ps.setString(10, insert.getHighs());
				ps.setString(11, insert.getUniver());
				ps.setString(12, insert.getLetter1());
				ps.setString(13, insert.getLetter2());
				ps.setString(14, insert.getLetter3());
				ps.setString(15,insert.getId());
				ps.executeUpdate();
			} catch (ClassNotFoundException e) {
				
				e.printStackTrace();
			} catch (SQLException e) {
				
				e.printStackTrace();
			}
			
	
}
public DTO selectre(String id) {
	DTO dto=new DTO();
	try {
		Class.forName(driver);
		Connection con=DriverManager.getConnection(a, b, c);
		String sql="select *from appilcant where id=?";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1, id);
		ResultSet rs=ps.executeQuery();
		if (rs.next()) {
			dto.setId(rs.getString(2));
			dto.setName(rs.getString(4));
			dto.setEmail(rs.getString(5));
			dto.setTel(rs.getString(8));
			dto.setHp(rs.getString(9));
			dto.setEngname(rs.getString(10));
			dto.setAddres(rs.getString(11));
			dto.setEas(rs.getString(12));
			dto.setLang(rs.getString(13));
			dto.setHighs(rs.getString(14));
			dto.setUniver(rs.getString(15));
			dto.setBir(rs.getString(16));
			dto.setLetter1(rs.getString(17));
			dto.setLetter2(rs.getString(18));
			dto.setLetter3(rs.getString(19));
			
			
			
			
			
		}
	} catch (ClassNotFoundException e) {
		
		e.printStackTrace();
	} catch (SQLException e) {
		
		e.printStackTrace();
	} 
	
	return dto;
}

public int overcheck(String id) {
	int check=-1;
	try {
		Class.forName(driver);
		Connection con=DriverManager.getConnection(a, b, c);
		String sql="select *from appilcant where id=?";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1, id);
		ResultSet rs=ps.executeQuery();
		if(rs.next()) {
			check=-1;
		}else {
			check=1;
		}
	} catch (ClassNotFoundException e) {
		
		e.printStackTrace();
	} catch (SQLException e) {
		
		e.printStackTrace();
	}

	return check;
}

public DTO applicantschool(String id) {
	DTO dto=null;
	try {
		Class.forName(driver);
		Connection con=DriverManager.getConnection(a, b, c);
		String sql="select *from appilcant where id=?";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1, id);
		ResultSet rs=ps.executeQuery();
		if (rs.next()) {
			dto.setHighs(rs.getString("highschool"));
			dto.setUniver(rs.getString("university"));
			
		}
	} catch (ClassNotFoundException e) {
		
		e.printStackTrace();
	} catch (SQLException e) {
		
		e.printStackTrace();
	}
	return dto;
}

public ArrayList selecte() {
	ArrayList list= null;
	
	try {
		Class.forName(driver);
		Connection con=DriverManager.getConnection(a, b, c);
		String sql="select * from appilcant";
		PreparedStatement ps=con.prepareStatement(sql);
		ResultSet rs=ps.executeQuery();
		list=new ArrayList();
		while (rs.next()) {
			DTO dto=new DTO();
			dto.setIdx(rs.getInt("idx"));
			dto.setId(rs.getString("id"));
			dto.setName(rs.getString("name"));
			dto.setJumin(rs.getString("jumin"));
			dto.setGender(rs.getString("gender"));
			list.add(dto);
		}
	} catch (Exception e) {
		
	}
		

	return list;

}



}
