
<%@page import="bean.BeanDAO2"%>
<%@page import="bean.BeanTest2"%>
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
<h1>JSP6/beanPro2.jsp</h1>
<%
request.setCharacterEncoding("UTF-8");
int num=Integer.parseInt(request.getParameter("num"));
String name= request.getParameter("name");

// BeanTest2 bt2= new BeanTest2();

// bt2.setName(name);
// bt2.setNum(num);
//객체생성 jsp:useBean  , 값저장; jsp:setProperty,
%>

<jsp:useBean id="bt2" class="bean.BeanTest2"/>
<jsp:setProperty property="*" name="bt2"/>

<% 

BeanDAO2 dao=new BeanDAO2();
dao.insertstudent(bt2);
%>
<script type="text/javascript">
alert("등록완료")
location.href="beanForm2.jsp";
</script>
</body>
</html>