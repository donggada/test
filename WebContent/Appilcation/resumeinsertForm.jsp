<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">
function addschool() {
	window.document.fr.action="addschool.jsp";
	
	window.document.fr.method="post";
	window.document.fr.submit();
}

</script>
<form action="resumepro.jsp" method="post" name="fr">
<table border="1">
<tr><th colspan="2" rowspan="5">사진</th><th>성명</th><td><input type="text" name="name"></td><th>영문</th><td><input type="text" name="engname"></td></tr>
<tr><th>생년월일</th><td colspan="4"><input type="text" name="bir"></td></tr>
<tr><th>휴대폰</th><td ><input type="text" name="hp"></td><th>전화번호</th><td><input type="text" name="tel"></tr>
<tr><th>e-mail</th><td colspan="4"><input type="text" name="email"></tr>
<tr><th>주소</th><td colspan="4"><input type="text" name="addres"></tr>
</table>
<br>
<table border="1">
<tr><th>자격증</th><td colspan="4"><input type="text" name="eas"></td></tr>
<tr><th>어학</th><td colspan="4"><input type="text" name="lang"></td></tr>

</table>
<br>
<table border="1">
<tr><th>고등학교</th><td colspan="4"><input type="text" name="highs"></td></tr>
<tr><th>대학교</th><td colspan="4" ><input type="text" name="univer"></td></tr>
</table>
<input type="button" value="추가" onclick="addschool()">

<table border="1">
<tr><td>자소서 1번 항목</td></tr>
<tr><td><textarea rows="20" cols="200"  name="letter1"></textarea></td></tr>
<tr><td>자소서 2번 항목</td></tr>
<tr><td><textarea rows="20" cols="200"  name="letter2"></textarea></td></tr>
<tr><td>자소서 3번 항목</td></tr>
<tr><td><textarea rows="20" cols="200" name="letter3" ></textarea></td></tr>
</table>
</form>

</body>
</html>