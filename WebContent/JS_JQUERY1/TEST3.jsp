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
var col=$('h3').css('color');
// alert(col);
$('h3').css('color','yellow');   // 한번에 바꾸기

//  순서대로 바꾸기
//배열 변수
var color=['red','green','blue'];
var color1=['green','blue','red'];
$('h3').css('color',function(index){
// 	alert(index);
// 	alert(color[index]);
	return color[index];
});
//color  background 두개 속성 적용
$('h3').css('color','red').css('background','pink');  
$('h3').css({
	color: function (index) {
		return color[index];
	},
	background:function (index) {
		return color1[index];
	}
});
	
});




</script>
</head>
<body>
<h1>JS_JQUERY1/TEST3.jsp</h1>
<h3>head-0</h3>
<h3>head-1</h3>
<h3>head-2</h3>

</body>
</html>