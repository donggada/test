<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript">
// 함수: 자주 사용하는 명령어들의 묶음에 이름을 부여한 것 ,사용할때 이름을 호출함
function funname() {
	alert('메시지1');
	alert('메시지2');
	alert('메시지3');
	alert('메시지4');
	alert('메시지5');
	return;
}

//x+10 변수 x -> 결과를 출력만 함
function funname2(x) {
	alert(x+10);
	return;
}
function funname3() {
	return "음료수";
}
function funname4(x){
	alert(x+10);	
	return;
	}
//x+10 -> 결과 받기
</script>
</head>
<body>
<h1>js1/test1.html</h1>
<input type="button" value="버튼1" onclick="funname()">
<input type="button" value="버튼2" onclick="funname2(5)">
<input type="button" value="버튼3" onclick="alert(funname3())">
<input type="button" value="버튼4" onclick="funname4(10)">

</body>
</html>