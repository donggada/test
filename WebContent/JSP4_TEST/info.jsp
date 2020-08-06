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
<h1>jsp5/info.jsp</h1>
<%
request.setCharacterEncoding("utf-8");
String id = (String)session.getAttribute("id");

Class.forName("com.mysql.jdbc.Driver");
String a="jdbc:mysql://localhost:3306/jspdb5"; 
String b="root" ;
String c="1234";
Connection con=DriverManager.getConnection(a, b, c);
String sql="select * from member where id=?";

PreparedStatement ps=con.prepareStatement(sql);
ps.setString(1,id);
ResultSet rs=ps.executeQuery();


%>
<table border="1">
<tr><td>아이디</td><td>이름</td> <td>비밀번호</td> <td>시간</td><td>나이</td><td>성별</td><td>이메일</td></tr>
<%
if(rs.next()){
	%>
<tr><td><%=rs.getString("id") %></td><td><%=rs.getString("name") %></td><td><%=rs.getString("pass") %></td>
<td><%=rs.getString("reg_date") %></td><td><%=rs.getInt("age") %></td>
<td><%=rs.getString("gender") %></td>
<td><%=rs.getString("email") %></td></tr>
<%
}
%>
</table>
</body>
</html>