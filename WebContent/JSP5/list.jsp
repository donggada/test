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
<%
Class.forName("com.mysql.jdbc.Driver");
String a="jdbc:mysql://localhost:3306/jspdb5"; 
String b="root" ;
String c="1234";
Connection con=DriverManager.getConnection(a, b, c);
String sql="select *from board order by num desc";
PreparedStatement ps=con.prepareStatement(sql);
ResultSet rs=ps.executeQuery();
while(rs.next()){
 %> 
 
<table border="1"> 
 <tr><td>글번호</td><td>제목</td><td>작성자</td><td>날짜</td><td>조회수</td></tr>
 <tr><td><%=rs.getInt("num") %></td><td><a href="content.jsp?num=<%=rs.getInt("num") %>"><%=rs.getString("subject") %></a></td> <td><%=rs.getString("name") %></td>
<td><%=rs.getTimestamp("date") %></td> <td><%=rs.getInt("readcount")%></td></tr> 
<%} %>
</table>
</body>
</html>