<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
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
<h1>JSP5/UpdateFrom.jsp</h1>
<%
request.setCharacterEncoding("utf-8");
int snum=Integer.parseInt(request.getParameter("num"));



String sql="select * from board where num=?";

Class.forName("com.mysql.jdbc.Driver");
String a="jdbc:mysql://localhost:3306/jspdb5"; 
String b="root" ;
String c="1234";
Connection con=DriverManager.getConnection(a, b, c);
PreparedStatement ps=con.prepareStatement(sql);
ps.setInt(1, snum);
ResultSet rs=ps.executeQuery();

%>
<form action="updatepro.jsp" method="post">

<%if(rs.next()) {%>
<input type="hidden" name="num"  value="<%=rs.getString("num")%>"">
<table border="1">
<tr><td>글쓴이</td><td><input type="text" name="name"  value="<%=rs.getString("name")%>"></td></tr>
<tr><td>비밀번호</td><td><input type="password" name="pass"></td></tr>
<tr><td>제목</td><td><input type="text" name="subject" value="<%=rs.getString("subject")%>"></td></tr>
<tr><td>내용</td><td><textarea rows="10" cols="20" name="content" "><%=rs.getString("content")%></textarea></td></tr>
<tr><td colspan="2"><input type="submit" value="글수정"></td></tr>
</table>
<% }%>
</form>
</body>
</html>