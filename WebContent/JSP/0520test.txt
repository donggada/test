<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>jsp1/0520test3.jsp</h1>
<%
// String str ="문자열";
String a= str+100;
out.print(a);
// String str ="문자열";
//함수 정의=>에러발생
// public void prn(){
// 	System.out.println("출력");
// 	return;
// }
prn();
%>
<%!
//전역변수: 페이지 전 영역에서 사용하는 변수 설정
//             페이지 동작할때 맨처음 변수 기억장서 할당  
String str ="문자열";
// 자바의 함수(메서드)  정의가능 (java 언어 가능)

public void prn(){
	System.out.println("출력");
	return;
}
%>
</body>
</html>