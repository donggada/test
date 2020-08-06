package bean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class BeanDAO2 {
 
	
	
	public void insertstudent(BeanTest2 bt2) {
		System.out.println(bt2);
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			String dbUrl ="jdbc:mysql://localhost:3306/jspdb5"; 
			String dbUser="root";
			String dbPass="1234";
			Connection con=DriverManager.getConnection(dbUrl,dbUser,dbPass);


			String sql="insert into student(num,name) values(?,?)";
			PreparedStatement ps=con.prepareStatement(sql);

			ps.setInt(1,bt2.getNum());
			ps.setString(2, bt2.getName());
			ps.executeUpdate();
		} catch (ClassNotFoundException e) {
		
			e.printStackTrace();
		} catch (SQLException e) {
		
			e.printStackTrace();
		}finally {
			
		}
		
	}
}
