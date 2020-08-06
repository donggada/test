<%@page import="member.MemberBean"%>
<%@page import="member.MemberDAO"%>
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
request.setCharacterEncoding("utf-8");
String id=(String)session.getAttribute("id");

MemberDAO mdao=new MemberDAO();
MemberBean mb=mdao.getmember(id);







%>

<form action="updatepro.jsp" method="post">
아이디:<input type="text" name="id" value="<%=id%>" readonly="readonly"><br>
이름:<input type="text" name="name"value="<%=mb.getName()%>"><br>
비밀번호:<input type="password" name="pass"><br>
<input type="submit" value="회원수정">
</form>

</body>
</html>