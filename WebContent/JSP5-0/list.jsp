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
<h1>jsp5/list.jsp</h1>
<%
String id=(String)session.getAttribute("id");
if(id==null){
	response.sendRedirect("loginForm.jsp");
}else if(!(id.equals("admin"))){
	response.sendRedirect("main.jsp");
}


request.setCharacterEncoding("utf-8");


Class.forName("com.mysql.jdbc.Driver");
String a="jdbc:mysql://localhost:3306/jspdb5"; 
String b="root" ;
String c="1234";
Connection con=DriverManager.getConnection(a, b, c);
String sql="select * from member ";

PreparedStatement ps=con.prepareStatement(sql);

ResultSet rs=ps.executeQuery();

%>
<table border="1">
<tr><td>아이디</td><td>이름</td> <td>비밀번호</td> <td>시간</td></tr>
<%
while(rs.next()){
	%>
<tr><td><%=rs.getString("id") %></td><td><%=rs.getString("name") %></td><td><%=rs.getString("pass") %></td>
<td><%=rs.getString("reg_date") %></td></tr>
<%
}
%>
</table>
</body>
</html>