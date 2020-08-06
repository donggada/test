<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>JSP4/jdbc.test.jsp</h1>

<%
Class.forName("com.mysql.jdbc.Driver");

String dburl="jdbc:mysql://localhost:3306/jspdb5";
String dbuser="root";
String dbpass="1234";

Connection con=DriverManager.getConnection(dburl,dbuser,dbpass);


%>
<%="연결성공" %>
</body>
</html>