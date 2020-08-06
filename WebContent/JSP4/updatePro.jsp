<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>jsp3/updatePro.jsp</h1>
<%
// request 한글처리
// int num , String name <= request 파라미터 가져와서 저장


// 1단계 드라이버 불러오기
//2단계 드라이버를 이용해서 디비 연결 =>connection con 연결정보 저장
//			sql update 테이블 이름 set 이름 수정 where 조건
//3단계 연결 정보에 preparestatment(sql) 메소드 호출
//  		sql 만들고 실행 할수 있느=>preparedstatment pstmt 생성
//4단계  실행
request.setCharacterEncoding("utf-8");
String name=request.getParameter("name");
String snum=request.getParameter("num");
int num=Integer.parseInt(snum);
//1단계
Class.forName("com.mysql.jdbc.Driver");
//2단계
String dbUrl ="jdbc:mysql://localhost:3306/jspdb5"; 
String dbUser="root";
String dbPass="1234";
Connection con=DriverManager.getConnection(dbUrl, dbUser, dbPass);
String sql="update student set name=? where num=?;";
PreparedStatement ps=con.prepareStatement(sql);
ps.setString(1, name);
ps.setInt(2, num);
ps.executeUpdate();


%>



</body>
</html>






