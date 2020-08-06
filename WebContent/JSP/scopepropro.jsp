<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>jsp1/scopepropro.jsp</h1>
<%
request.setCharacterEncoding("utf-8");
String id=request.getParameter("id");
String pass=request.getParameter("pass");
%>
아이디:<%=id %><br>
비밀번호:<%=pass %><br>
pageContext 저장된 값:<%=pageContext.getAttribute("page") %><br>
request 저장된 값: <%=request.getAttribute("req") %><br>
session 저장된 값: <%=session.getAttribute("ses") %><br>
application 저장된 값:<%=application.getAttribute("app") %><br>
</body>
</html>