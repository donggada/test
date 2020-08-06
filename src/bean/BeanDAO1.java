package bean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;




public class BeanDAO1 {
	

	public Connection getConnection() {
	
		String driver = "com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306//jspdb5";
		String user = "root";
		String password = "1234";
		
		Connection con = null;
		
	
			try {
				Class.forName(driver);
				con = DriverManager.getConnection(url, user, password);
			} catch (ClassNotFoundException e) {
			
				e.printStackTrace();
			} catch (SQLException e) {
			
				e.printStackTrace();
			}
			return con;
				}

	public void insertMember(BeanTest1 bt1) {
		Connection con=getConnection();
		String sql="insert into mem(name) values(?)";

	
			 try {
				PreparedStatement pstmt =con.prepareStatement(sql);

				pstmt.setString(1, bt1.getName());
				pstmt.executeUpdate();
			} catch (SQLException e) {
				
				e.printStackTrace();
			}
			
		
	
	}
	

	
	
	
}
