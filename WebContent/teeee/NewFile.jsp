<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head> 
<body>
<table  >
<%int i=0,j=0;
for(int a =0; a<=6; a++){j++;
	

if(i==0){i++;%><tr><%}%>
<td>
	<table border="3">
	<tr><td><img src="_03news.jpg"  width="500"></td></tr>
	</table>
</td>
	<%
if(j==3){i=0;j=0; %></tr><%	}
}%>
</table>
</body>
</html>