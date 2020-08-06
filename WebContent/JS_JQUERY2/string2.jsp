<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- <h1>Js_jQurey2/string2.jsp</h1> -->
<%
//name age 파라미터 가져오기
String name=request.getParameter("name");
String age=request.getParameter("age");

out.print("이름 : "+name+" 나이 : "+age);


%>
