<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>회원가입</h1>
<form action="insertPro.jsp" method="post" name="insert">
아이디:<input type="text" name="id"> <input type="button" value="중복확인" onclick="check()"><br>

비밀번호:<input type="password" name="pass"><br>
비밀번호확인:<input type="password" name="pass1"><br>
이름:<input type="text" name="name"><br>
주민등록번호:<input type="text" name="jumin"><br>
성별:<input type="radio" name="gender" value="men">남자
	<input type="radio" name="gender" value="women">여자<br>
전화번호:<input type="tel" name="tel"><br>
이메일:<input type="text" name="email"><br>
<input type="submit" value="회원가입">

</form>

</body>
</html>





