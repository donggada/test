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
<h1>jsp3/selectPro.jsp</h1>
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
String sql="select *from student where num=? ";
PreparedStatement ps =con.prepareStatement(sql);
ps.setInt(1, num);

ResultSet rs=ps.executeQuery();
%>
<table border="1">
<tr><td>학생번호</td><td>학생이름</td></tr>
<%
while(rs.next()){
	%>
<tr><td><%=rs.getInt("num") %></td><td><%=rs.getString("name") %></td></tr>
<%
}
%>
</table>

</body>
</html>