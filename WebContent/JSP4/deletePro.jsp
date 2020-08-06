<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Driver"%>
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
<h1>jsp3/deletepro.jsp</h1>
<% 
request.setCharacterEncoding("utf-8");
String name=request.getParameter("name");
String snum=request.getParameter("num");
int num=Integer.parseInt(snum);

Class.forName("com.mysql.jdbc.Driver");
String dbUrl ="jdbc:mysql://localhost:3306/jspdb5"; 
String dbUser="root";
String dbPass="1234";
Connection con =DriverManager.getConnection(dbUrl, dbUser, dbPass);
String sql="delete from student where name=? and num=?;";
PreparedStatement ps =con.prepareStatement(sql);
ps.setInt(2, num);
ps.setString(1, name);
ps.executeUpdate();
%>
</body>
</html>