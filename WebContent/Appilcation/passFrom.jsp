<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호찾기</title>
</head>
<body>
<form action="passpro.jsp" method="post">
아이디:<input type="text" name="id"><br>
이름:<input type="text" name="name"><br>
주민등록번호:<input type="text" name="jumin"><br>
<input type="submit" value="비밀번호찾기">
</form>
</body>
</html>