<%@page import="applicant.DTO"%>
<%@page import="applicant.DAO"%>
<%@page import="member.MemberDAO"%>
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
request.setCharacterEncoding("UTF-8");
String id=(String)session.getAttribute("id");
DAO mdao=new DAO();
DTO mdto=new DTO();
mdao.selectre(id);
%>
<tr><td>고등학교</td><td><%=mdto.getHighs() %></td></tr>
<tr><td>대학교</td><td><%=mdto.getUniver() %></td></tr>
</body>
</html>