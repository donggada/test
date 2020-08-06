<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.high_0{background: yellow;}
.high_1{background: orange;}
.high_2{background: blue;}

</style>
<script src="../JS/jquery-3.5.1.js"></script>
<script type="text/javascript">
$(document).ready(function () { 
	
	// each() 반복
	//1. 여러개 태그대상
	//2. 배열변수 대상
	//3. 파일결과 대상
	
	 $('h3').each(function (index) {
// 		alert(index)
				$(this).addClass('high_'+index);
	});
	
	//배열변수 선언
	var arr=[
			{name:'naver',link:"http://www.naver.com"},
			{name:'daum',link:"http://www.daum.net"},
			{name:'jQuery',link:"http://www.jquery.com"}
	];
		
	$.each(arr,function(index,item){
// 		alert(index);
// 		alert(item.name);
// 		alert(item.link);
		$('table').append('<tr><td>'+item.name+'</td><td>'+item.link+h'</td></tr>');
	});
	
});






</script>
</head>
<body>
<h1>JS_JQUERY1/TEST7.jsp</h1>
<table border="1">
<tr><td>사이트이름</td><td>사이트주소</td></tr>
</table>
<h3 >head-0</h3>
<h3>head-1</h3>
<h3>head-2</h3>





</body>
</html>