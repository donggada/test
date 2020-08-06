<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>jsp5/deletepro.jsp</h1>
<%
String id=(String)session.getAttribute("id");
String pass=request.getParameter("pass");
request.setCharacterEncoding("utf-8");






Class.forName("com.mysql.jdbc.Driver");
String a="jdbc:mysql://localhost:3306/jspdb5"; 
String b="jspid" ;
String c="jsppass";
Connection con=DriverManager.getConnection(a, b, c);
String sql="select * from member where id=? ";

PreparedStatement ps=con.prepareStatement(sql);
ps.setString(1, id);
ResultSet rs=ps.executeQuery();

 if(rs.next()){
		  if(pass.equals(rs.getString("pass"))){
			sql="delete from member where id=?";
			ps=con.prepareStatement(sql);
			ps.setString(1, id);
			ps.executeUpdate();
			response.sendRedirect("loginForm.jsp");
			
			 
		  }else{
out.print("비밀번호틀림");		 

		  }
	     }else{
	    	 out.print("아이디가없습거나 틀립니다");		 
		 
	  }



%>
</body>
</html>