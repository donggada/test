<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="colorset.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="<%=col1%>">
<h1>jsp.include.jsp</h1>
<table border="1" width="600"  height="600">
<tr><th colspan="2"  height="100" ><jsp:include page="jsp.top.jsp"/></th></tr>
<tr><th width="100"><jsp:include page="jsp.left.jsp"/></th><th>본문</th></tr>
<tr><th colspan="2" height="100"><jsp:include page="jsp.bottom.jsp"/></th></tr>

</table>
</body>

</html>