<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>jsp/testpro2.jsp</h1>
<%
request.setCharacterEncoding("utf-8");
String id = request.getParameter("id");
String age = request.getParameter("age");
int a=Integer.parseInt(age);

//out 출력 내장객체
System.out.println("콘솔출력");
out.println("아이디:"+id+"<br>");
out.println("나이:"+age+"<br>");
out.println("나이+100:"+(a+100)+"<br>");
//if 나이 20세 미만 "미성년입니다." 20세이상이면 "성인입니다"

%>

<%
if (a>=20){
	%>
	<%=a+"성인입니다. <br>"%>
	<%
}else{
	%>
	<%=a+ "미성년입니다<br>"%>
<%
}
%>
<% 
//나이가 20보다 작으면 15세 미성년입니다
//                        크거니 같으면 25세 성인입니다.
%>
<%
if (a<=20){
	%>
	<%="15세 미성년입니다.<br>"%>
	<%
	}else{
	%>
	<%="25세 성인입니다" %>
	<%}
%>
	
<br>
아이디:<%= id %><br>
나이:<%= age %><br>
나이+100:<%= Integer.parseInt(age)+100 %>
</body>
</html>