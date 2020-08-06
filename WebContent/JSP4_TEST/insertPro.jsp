<%@page import="java.sql.Timestamp"%>
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
<h1>jsp4_test/insertpro.jsp</h1>
<%
request.setCharacterEncoding("utf-8");
String name=request.getParameter("name");
String id=request.getParameter("id");
String pass=request.getParameter("pass");
Timestamp time=new Timestamp(System.currentTimeMillis());
int age =Integer.parseInt(request.getParameter("age"));
String gender=request.getParameter("gender");
String email= request.getParameter("email");

Class.forName("com.mysql.jdbc.Driver");
String a="jdbc:mysql://localhost:3306/jspdb5"; 
String b="root" ;
String c="1234";
Connection con=DriverManager.getConnection(a, b, c);
String sql="insert into member(id,pass,name,reg_date,age,gender,email) values(?,?,?,?,?,?,?)";

PreparedStatement ps=con.prepareStatement(sql);
ps.setString(1, id);
ps.setString(2, pass);
ps.setString(3, name);
ps.setTimestamp(4, time);
ps.setInt(5, age);
ps.setString(6,gender);
ps.setString(7,email);
ps.executeUpdate();
%>
<script type="text/javascript">
alert("회원가입 성공");
location.href="loginForm.jsp";




</script>
</body>
</html>