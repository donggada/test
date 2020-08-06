<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>jsp2/cookiePro.jsp</h1>
<%


String a=request.getParameter("Lang");



Cookie c =new Cookie("clang",a);
c.setMaxAge(1800);
response.addCookie(c);
%>
<script type="text/javascript">
alert("<%=a%>언어설정 성공");
location.href="cookieMain.jsp";
</script>
</body>
</html>