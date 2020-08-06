<%@page import="bean.BeanDAO1"%>
<%@page import="bean.BeanTest1"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>JSP6/beanPro1.jsp</h1>
<%
request.setCharacterEncoding("UTF-8");
String name= request.getParameter("name");

BeanTest1 bt1= new BeanTest1();

bt1.setName(name);
// out.print(bt1.getName());

BeanDAO1 dao=new BeanDAO1();
dao.insertMember(bt1);
%>
</body>
</html>