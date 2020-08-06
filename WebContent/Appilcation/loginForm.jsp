<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인화면</title>
</head>
<body>

<form action="loginPro.jsp" method="post">
아이디:<input type="text" name="id"><br>
비밀번호:<input type="password" name="pass"><br>

<input type="submit" value="로그인"><br>
<input type="button" value="아이디찾기"  onclick="location.href='idForm.jsp'"><input type="button" value="비밀번호찾기"  onclick="location.href='passForm.jsp'"><br>
<input type="button" value="회원가입"  onclick="location.href='insertForm.jsp'">
</form>
</body>
</html>