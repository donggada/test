<%@page import="com.sun.org.apache.bcel.internal.generic.LNEG"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>

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
<h1>JSP5/writeForm.jsp</h1>
<%
request.setCharacterEncoding("utf-8");
String name=request.getParameter("name");
String pass=request.getParameter("pass");
String subject=request.getParameter("subject");
String content=request.getParameter("content");
Timestamp date=new Timestamp(System.currentTimeMillis());
int readcount=0;
int num=0;
String sql="select max(num) from board";

Class.forName("com.mysql.jdbc.Driver");
String a="jdbc:mysql://localhost:3306/jspdb5"; 
String b="root" ;
String c="1234";
Connection con=DriverManager.getConnection(a, b, c);
PreparedStatement ps=con.prepareStatement(sql);
ResultSet rs=ps.executeQuery();
if(rs.next()){
	num=rs.getInt("max(num)")+1;
}



sql="insert into board(num,name,pass,subject,content,readcount,date) values(?,?,?,?,?,?,?)";

 ps=con.prepareStatement(sql);
ps.setInt(1, num);
ps.setString(2, name);
ps.setString(3, pass);
ps.setString(4, subject);
ps.setString(5, content);
ps.setInt(6, readcount);
ps.setTimestamp(7, date);

ps.executeUpdate();
response.sendRedirect("list.jsp");
%>

</body>
</html>