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

if(id==null){
	response.sendRedirect("loginForm.jsp");
}
	

%>
<h1>jsp5/Main.jsp</h1>

<%=id%> 님 로그인 하셨습니다.<br>
<%if(id!=null){
if(id.equals("admin")){%>
<a href="list.jsp">회원목록</a><br>
<%}}


%>
<a href="resumeinfo.jsp">이력서조회하기</a><br>
<a href="resumeinsertForm.jsp">이력서작성하기</a><br>
<a href="deleteForm.jsp">회원정보삭제</a><br>
<input type="button" value="로그아웃"  onclick="location.href='logout.jsp'">
</body>
</html>