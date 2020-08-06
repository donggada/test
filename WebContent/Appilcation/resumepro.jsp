<%@page import="applicant.DTO"%>
<%@page import="applicant.DAO"%>
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

%>
<jsp:useBean id="insert" class="applicant.DTO"/>
<jsp:setProperty property="*" name="insert"/>
<jsp:setProperty property="id" name="insert" value="<%=id %>"/>
<%
DAO dao=new DAO();
dao.ResumeInsert(insert);
response.sendRedirect("Main.jsp");

%>
</body>
</html>