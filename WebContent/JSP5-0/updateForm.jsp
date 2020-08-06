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
<%
String id=(String)session.getAttribute("id");

request.setCharacterEncoding("utf-8");


Class.forName("com.mysql.jdbc.Driver");
String a="jdbc:mysql://localhost:3306/jspdb5"; 
String b="jspid" ;
String c="jsppass";
Connection con=DriverManager.getConnection(a, b, c);
String sql="select * from member where id=? ";

PreparedStatement ps=con.prepareStatement(sql);
ps.setString(1, id);
ResultSet rs=ps.executeQuery();
if(rs.next()){
%>

<form action="updatepro.jsp" method="post">
아이디:<input type="text" name="id" value="<%=id%>" readonly="readonly"><br>
이름:<input type="text" name="name"value="<%=rs.getString("name")%>"><br>
비밀번호:<input type="password" name="pass"><br>


<input type="submit" value="회원수정">
</form>
<%
}else{
	out.print("");
}



%>
</body>
</html>