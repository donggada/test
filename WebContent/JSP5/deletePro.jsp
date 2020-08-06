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
<h1>JSP5/deleteForm.jsp</h1>
<%
request.setCharacterEncoding("utf-8");
String name=request.getParameter("name");
String subject=request.getParameter("subject");
String content=request.getParameter("content");
String pass=request.getParameter("pass");
int snum=Integer.parseInt(request.getParameter("num"));


Class.forName("com.mysql.jdbc.Driver");
String a="jdbc:mysql://localhost:3306/jspdb5"; 
String b="root" ;
String c="1234";
Connection con=DriverManager.getConnection(a, b, c);


String sql="select * from board where num=?";
PreparedStatement ps=con.prepareStatement(sql);
ps.setInt(1, snum);
ResultSet rs=ps.executeQuery();


if(rs.next()){
	if(pass.equals(rs.getString("pass"))){
 
sql="delete from board where num=?";
 ps=con.prepareStatement(sql);
ps.setInt(1, snum);
ps.executeUpdate();
%><script type="text/javascript">
alert("삭제완료")
location.href="list.jsp";
</script>
<% 
}else{%>
<script type="text/javascript">
alert("비밀번호틀림")
history.back();
</script>
<%
}
}else{
%><script type="text/javascript">
alert("아이디없음")
history.back();
</script><%
}
%>

%>
</body>
</html>