<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
 	*{margin: 0px;padding: 0px;}
 	ul{list-style: none;}
 	img{width: 500px; height: 350px;}
</style>
<script src="../JS/jquery-3.5.1.js"></script>
<script src="../JS/jquery.innerfade.js"></script>
<script type="text/javascript">
$(document).ready(function () { 
	$('#inner_fade').innerfade({
		animationtype:'fade',
		speed:750,
		timeout:2000,
		type:'random',
		containerheight:'350px'
	});
	
	
});






</script>
</head>
<body>
<h1>JS_JQUERY1/TEST11.jsp</h1>
<ul id="inner_fade">
<li ><img src="../js.2/1.jpg"></li>
<li ><img src="../js.2/2.jpg"></li>
<li ><img src="../js.2/3.jpg"></li>
<li ><img src="../js.2/4.jpg"></li>
<li ><img src="../js.2/5.jpg"></li>
</ul>





</body>
</html>