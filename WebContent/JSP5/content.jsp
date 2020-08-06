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
<h1>JSP5/content.jsp</h1>
<%
// String n=request.getParameter("num");
// if(n==null){
// 	n="0";
// }
int num=Integer.parseInt(request.getParameter("num"));

Class.forName("com.mysql.jdbc.Driver");
String a="jdbc:mysql://localhost:3306/jspdb5"; 
String b="root" ;
String c="1234";
Connection con=DriverManager.getConnection(a, b, c);
String sql="update board set readcount=readcount+1 where num=?";
PreparedStatement ps=con.prepareStatement(sql);
ps.setInt(1, num);
ps.executeUpdate();

sql="select *from board where num=?";
ps=con.prepareStatement(sql);
ps.setInt(1, num);
ResultSet rs=ps.executeQuery();
if(rs.next()){
 %> 
<table border="1">
<tr><td>글번호</td><td><%=rs.getInt("num") %></td><td>조회수</td><td><%=rs.getInt("readcount") %></td></tr>
<tr><td>글쓴이</td><td><%=rs.getString("name") %></td><td>작성일</td><td><%=rs.getTimestamp("date") %></td></tr>
<tr><td>글제목</td><td colspan="3"><%=rs.getString("subject") %></td></tr>
<tr><td>글내용</td><td colspan="3"><%=rs.getString("content") %></td></tr>
<tr><td colspan="4">
<input type="button" value="글수정" 
onclick="location.href='updateForm.jsp?num=<%=rs.getInt("num")%>'">
<input type="button" value="글삭제" 
onclick="location.href='deleteForm.jsp?num=<%=rs.getInt("num")%>'">
<input type="button" value="글목록" onclick="location.href='list.jsp'">
</td></tr>

</table>
<%} %>
</body>
</html>