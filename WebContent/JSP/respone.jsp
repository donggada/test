<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>jsp1/respone.jsp</h1>
<%
//클라이언트 응답할때 http header값 변경
// response.setHeader("헤더이름","값");

//서버에서 클라이언트 보낼떄 파일을 브라우저에서 바로 실행하지 않고 첨부 (다운) 되게 설정
// response.setHeader("contemt-Disposition","attachment; filename= +sEncoding );

//서버에서 처리한 결과를 보내는 타입을 설정해서 보내기
response.setContentType("test/html; charset=UTF-8");

//쿠키값을 서버에서 클라이언트로 보낼때 
// response.addCookie(쿠키);

//서버에서 클라이언트 응답할때 다른 페이지 요청을 재전송
//html 태그<a href="request.jsp"> 하이퍼링크</a>
//자바스크립트 location.href="request.jsp"
//jsp 하이퍼링크
response.sendRedirect("request.jsp");



%>


</body>
</html>