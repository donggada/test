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
	
	//대상 .html ()   //대상에 글자를 가져오기 , 넣기
	var h=	$('h3').html();
// 	alert(h);
// 	$('h3').html('아이디중복입니다');
	
	$('h3').html(function (index) {
// 		alert(index);
// 			return '결과'+index;

	});
	
	//  a=a+1
	//function(index,oldhtml)
	//*head-0*
	$('h3').html(function (index,oldhtml) {
// 		alert(oldhtml); 
			return '*'+oldhtml+'*';
	})
	
});






</script>
</head>
<body>
<h1>JS_JQUERY1/TEST5.jsp</h1>
<h3>head-0</h3>
<h3>head-1</h3>
<h3>head-2</h3>
</body>
</html>