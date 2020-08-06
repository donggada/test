<%@page import="board.BoardDAO"%>
<%@page import="board.BoardDTO"%>
<%@page import="com.sun.org.apache.bcel.internal.generic.LNEG"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>

<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>board/writeForm.jsp</h1>
<%
request.setCharacterEncoding("utf-8");
String name=request.getParameter("name");
String pass=request.getParameter("pass");
String subject=request.getParameter("subject");
String content=request.getParameter("content");
Timestamp date=new Timestamp(System.currentTimeMillis());
int readcount=0;
int num=0;
%>
<jsp:useBean id="b" class="board.BoardDTO"></jsp:useBean>
<jsp:setProperty property="*" name="b"/>

<%
BoardDAO boa=new BoardDAO();
boa.insertboard(b);
response.sendRedirect("list.jsp");
%>

</body>
</html>