<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>jsp/for.jsp</h1>
<%

		String hobby2[]=new String[3];
		hobby2[0]="여행";
		hobby2[1]="게임";
		hobby2[2]="독서";

		String hobby3[]=new String[]{"여행","게임","독서"};

		String hobby[] ={"여행","게임","독서"};
		// hobby 배열 for 내용출력
	for(int i =0; i<hobby.length; i++){
	out.println(hobby[i]+"<br>");
	}
	for(int i =0; i<hobby.length; i++){
		%>
		<%=hobby[i] %><br><%
	}
%>
<table border="1">
<tr>
<td>번호</td>
<td>취미</td>
</tr>
<!-- <tr> -->
<!-- <td>1</td> -->
<!-- <td>여행</td> -->
<!-- </tr> -->
<!-- <tr> -->
<!-- <td>2</td> -->
<!-- <td>게임</td> -->
<!-- </tr> -->
<!-- <tr> -->
<!-- <td>3</td> -->
<!-- <td>독서</td> -->
<!-- </tr> -->
<br>
<%
for(int i =0; i<hobby.length; i++){
 %><tr><td><%=(i+1)%></td><td><%=hobby[i]%> 
</td></tr><% }
%>
</table>
</body>
</html>