<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="../JS/jquery-3.5.1.js"></script>
<script type="text/javascript">
// jquery : javascript이용해서 기능을 함수들로 정의
// http://jquery.com/
// 1. jquery 사용
// 2. 대상선택.함수() 대상선택
// 3. 함수() 모양  .css()  .attr() <-속성     내용  .html()   .append() <-추가
// 4. 배열  .eath()    이벤트 .click()  .mouseover()
// 5. 효과  hide()  show()   toggle()
// 6. 비동기방식   .ajax()   .getJSON()

jQuery(document).ready(function () {
	alert("준비1");
});

$(document).ready(function () {
	alert("준비2");
})

$(function () {
	alert("준비3");
});



</script>
</head>
<body>
<h1>JS_JQUERY1/TEST1.jsp</h1>
</body>
</html>