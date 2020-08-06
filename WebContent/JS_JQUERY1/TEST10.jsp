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
	//효과 show()   hide()  toggle()
	// sildeDown()   slideUp()  slideToggle()
	// fadeIn()  fadeOut()  fadeToggle()
	
$('h2').click(function () {
	$(this).next().toggle('slow',function(){
		alert('효과끝');
	});
});
	
	
});






</script>
</head>
<body>
<h1>JS_JQUERY1/TEST10.jsp</h1>

<h2>열고 닫고1</h2>
<div>
<h2>제목1</h2>
<p>내용1</p>
</div>


<h2>열고 닫고2</h2>
<div>
<h2>제목2</h2>
<p>내용2</p>
</div>




</body>
</html>