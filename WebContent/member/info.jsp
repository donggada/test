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
<h1>jsp5/info.jsp</h1>
<%
request.setCharacterEncoding("utf-8");
String id = (String)session.getAttribute("id");

MemberDAO mdao=new MemberDAO();
MemberBean bb=mdao.getmember(id);

%>
<table border="1">
<tr><td>아이디</td><td>이름</td> <td>비밀번호</td></tr>

<tr><td><%=bb.getId() %></td><td><%=bb.getName() %></td><td><%=bb.getPass() %></td></tr>




</table>
</body>
</html>