<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>jsp2/sessionMain.jsp</h1>
<%=session.getAttribute("id") %>님이 로그인 되셨습니다.<br>

<input type="button"  value="로그아웃" onclick="(location.href='sessionLogout.jsp')">
</form>
</body>
</html>