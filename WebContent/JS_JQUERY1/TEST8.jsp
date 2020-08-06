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
	
// $('h3').bind('click',function(){
// 	alert('클릭');
// });

// $('h3').click(function(){
// 	$(this).html('click이벤트');
// 	alert('클릭이벤트');
// 	//이벤트 종료
// 	$(this).unbind();
// });

$('h3').click(function(){
	$(this).html(function(index,oldhtml) {
		return oldhtml+'*';
	});

});


$('img').mouseover(function () {
	$(this).attr('src','../js.2/2.jpg');
	}). mouseout(function () {
	$(this).attr('src','../js.2/1.jpg');
	});
	
});






</script>
</head>
<body>
<img src="../js.2/1.jpg">
<h1>JS_JQUERY1/TEST8.jsp</h1>
<h3>head-0</h3>
<h3>head-1</h3>
<h3>head-2</h3>





</body>
</html>