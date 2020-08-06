<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 바꾸기</title>
</head>
<body>
<%String id=(String)session.getAttribute("id");%>
<form action="updatepasspro.jsp" method="post">
<input type="hidden" name="id" value="<%=id%>">
비밀번호:<input type="password" name="pass"><br>
비밀번호확인:<input type="password" name="pass1"><br>
<input type="submit" value="비밀번호바꾸기">
</form>
</body>
</html>