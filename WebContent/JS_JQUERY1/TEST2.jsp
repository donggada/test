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
	//대상.함수
	//대상 선택
	//$('*').css('속성','값');
	$('*').css('color','red');
	//태그 대상선택
	$('h1').css('color','blue');
	// #이름 대상선택 id="이름"
	$('#ta').css('color','green')
	// .이름 대상선택  class="이름"
	$('.ta02').css('color','pink')
	//태그[속성=값] (같다)                    태그[속성~=값] (포함)                  태그[속성^=값] (시작값)                   태그[속성$=값] (끝값)
	$('input[type=text]').css('color','yellow');
	//태그 :       odd  홀수 태그 :           even 짝수 태그 :      first 처음 태그    :    last 마지막태그
	
	$('tr:odd').css('background','yellow');
	$('tr:even').css('background','pink');
	$('tr:first').css('background','skyblue');
	$('tr:last').css('background','green');
	
	
});





</script>
</head>
<body>
<h1>JS_JQUERY1/TEST2.jsp</h1>
<table border="1">
<tr><td>번호</td><td>제목</td></tr>
<tr><td>1</td><td>제목1</td></tr>
<tr><td>2</td><td>제목2</td></tr>
<tr><td>3</td><td>제목3</td></tr>
<tr><td>4</td><td>제목4</td></tr>
</table>
<input type="text" value="아이디">
<input type="password" value="123">
<h1 id="ta">제목1</h1>
<h1 class="ta02">제목2</h1>
내용
</body>
</html>