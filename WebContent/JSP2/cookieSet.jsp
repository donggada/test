<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>jsp2/cookieSet.jsp</h1>
<%
// Cookie cookie =new  Cookie ("이름","");
//쿠키값 기억장소 만들기 (생성)  이름 ,값 저장
Cookie cookie =new  Cookie("cook","cookie value");
//쿠키 유지 시간 설정
cookie.setMaxAge(600);  //600초(초단위)  10분
//서버처리결과 => 사용자 컴퓨터에 저장작업
response.addCookie(cookie);
%>
<script type="text/javascript">
alert("쿠기값 생성");
location.href="cookieTest.jsp"
</script>
</body>
</html>