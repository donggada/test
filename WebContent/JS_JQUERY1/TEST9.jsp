<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="../JS/jquery-3.5.1.js"></script>
<script type="text/javascript">
$(document).ready(function () { 
	
$('#my_form').submit(function () {
	var id=$('#id').val();
	var pass=$('#pass').val();

if(id==''){alert('아이디를 입력해주세요'); $('#id').focus(); return false;}
if(pass==''){alert('비밀번호를 입력해주세요');$('#pass').focus();return false;}

if(!($('#man').is(":checked") || $('#women').is(":checked"))){
	alert('성별을 선택해주세요');$('#men').focus();return false;
}
	return false;
});

});






</script>
</head>
<body>
<h1>JS_JQUERY1/TEST9.jsp</h1>
<form action="a.jsp" method="post" id="my_form">
아이디 : <input type="text" name="id" id="id"><br>
비밀번호 : <input type="password" name="pass" id="pass"><br>
성별 : <input type="radio" name="gender"  id="man"  value="남"> 남
		<input type="radio" name="gender" id="women"  value="여"> 여<br>
<input type="submit" value="회원가입">

</form>




</body>
</html>