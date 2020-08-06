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
	//대상.append() 대상 뒷부분에 추가
	$('body').append('<h3>내용추가</h3>');
	
	$('table').append('<tr><td>1</td><td>안녕하세요</td></tr>');
	$('table').append('<tr><td>2</td><td>반갑습니다</td></tr>');
	
	
	//2초 마다 반복
	setInterval(function () {
			//div 태그 대상에 첫번쨰 이미지를 뒷부분 추가	
		$('div').append($('img').first());
	}, 2000);
	
	
});






</script>
</head>
<body>
<h1>JS_JQUERY1/TEST6.jsp</h1>
<div>
<img  src="../js.2/1.jpg">
<img  src="../js.2/2.jpg">
<img  src="../js.2/3.jpg">
<img  src="../js.2/4.jpg">
<img  src="../js.2/5.jpg">
</div>


<table border="1">
<tr><td>번호</td><td>제목</td></tr>

</table>
</body>
</html>