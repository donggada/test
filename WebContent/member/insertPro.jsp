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
<h1>member/inserPro.jsp</h1>
<%
request.setCharacterEncoding("UTF-8");
String id=request.getParameter("id");
String pass=request.getParameter("pass");
String name=request.getParameter("name");
%>
<jsp:useBean id="mb" class="member.MemberBean"/>
<jsp:setProperty property="*" name="mb"/>
<% 
MemberDAO mdao=new MemberDAO();
mdao.insertMember(mb);

%>
<script type="text/javascript">
alert("등록완료")
location.href="loginForm.jsp";
</script>
</body>
</html>