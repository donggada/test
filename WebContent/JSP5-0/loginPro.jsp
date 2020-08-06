<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
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
<h1>jsp5/loginPro.jsp</h1>
<%
// session.setAttribute("id", id);

// response.sendRedirect("Main.jsp"); 
String id=request.getParameter("id");
String pass=request.getParameter("pass");
request.setCharacterEncoding("utf-8");
String name=request.getParameter("name");





Class.forName("com.mysql.jdbc.Driver");
String a="jdbc:mysql://localhost:3306/jspdb5"; 
String b="jspid" ;
String c="jsppass";
Connection con=DriverManager.getConnection(a, b, c);
String sql="select * from member where id=? ";

PreparedStatement ps=con.prepareStatement(sql);
ps.setString(1, id);
ResultSet rs=ps.executeQuery();

 if(rs.next()){
		  if(pass.equals(rs.getString("pass"))){
			  session.setAttribute("id", id);
			response.sendRedirect("Main.jsp"); 
		  }else{
// 			  out.println("비밀번호 불일치");
// 			  response.sendRedirect("lopass.jsp"); 

		  }
	     }else{
// 		  out.println("아이디 없거나 틀립니다");
		  response.sendRedirect("loid.jsp"); 
	  }



%>


</body>
</html>