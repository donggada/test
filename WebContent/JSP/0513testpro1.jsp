<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
//  폼에서 post 방식으로 전송하면 request정보를 사용하기전에 한글처리
 request.setCharacterEncoding("utf-8");
// java jsp 명령
// http 폼에 있는 요청내용을 들고오면 웹서버 - 웹애플리케이션서버 - request,respones 생성 - request 요청정보 저장
// request 내장객체.함수()     request.getParameter("파라미터이름")
// 변수 =request.getParameter("파라미터이름")
String sname=request.getParameter("name");
String snum=request.getParameter("num");
// int num=request.getParameter("num");
//request에서 가져온 값은 String 문자열 이다.
%>
<h1>jsp/testpro1.jsp</h1>
이름:<%=sname%><br>
좋아하는숫자:<%=snum%><br>
좋아하는숫자(문자)를 정수형을 변경해서+100:<%=Integer.parseInt(snum)+100%><br>
</body>
</html>