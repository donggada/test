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
	//대상 .함수()   .attr()태그 속성
	
	var s=$('img').attr('width');
// 	alert(s);
	//img 대상 width변겨 300
	$('img').attr('width',300);
	var ss=[100,200,300];
	$('img').attr('width',function(index){
		return ss[index];
	});
	
	$('img').attr({width:500,height:300});
	
	$('img').attr({width:function(index){
		return (index+2)*100;
		},
		height:function(index){
			return (index+1)*100;
		}
	});
			

	
	
	
	
});






</script>
</head>
<body>
<h1>JS_JQUERY1/TEST4.jsp</h1>
<img src="../js.2/1.jpg" width="200" height="100">
<img src="../js.2/2.jpg" width="200" height="100">
<img src="../js.2/3.jpg" width="200" height="100">

</body>
</html>