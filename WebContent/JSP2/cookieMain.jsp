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
Cookie cook[]=request.getCookies();
String lang="korea";
// 			out.println(cook.length);

if(!(cook ==null)){
	for(int i=0; i<cook.length ; i++){
		if(cook[i].getName().equals("clang")){
			out.println("쿠키이름 : "+cook[i].getName());
			out.println("쿠키값 : "+cook[i].getValue());
			lang=cook[i].getValue();
		}
	}

}
// out.println(lang);
if(lang.equals("korea")){
	out.println("<br>안녕하세요");
}else{
	out.println("<br>Hello");
}
%>
<h3>안녕하세요</h3>
<h3>Hello</h3>
<h1>jsp2/cookieMain.jsp</h1>
<form action="cookiePro.jsp" method="post">
<input type="radio" name="Lang" value="korea"  <%if (lang.equals("korea")) {%>checked<% } %>>한국어 페이지보기<br>
<input type="radio" name="Lang" value="english" <%if (lang.equals("english")) {%>checked<% } %>>영어 페이지보기<br>
<input type="submit" value="언어설정">
</form>
</body>
</html>




