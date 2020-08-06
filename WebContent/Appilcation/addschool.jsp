<%@page import="applicant.DAO"%>
<%@page import="applicant.DTO"%>
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
String highs=request.getParameter("highs");
String univer=request.getParameter("univer");
String id=(String)session.getAttribute("id");


%>
<jsp:useBean id="addsc" class="applicant.DTO"></jsp:useBean>
<jsp:setProperty property="*" name="addsc"/>
<jsp:setProperty property="id" name="addsc" value="<%=id %>"/>
<%
DAO dao=new DAO();
dao.ResumeInsert(addsc);
response.sendRedirect("resumeinsertForm2.jsp");
%>

</body>
</html>