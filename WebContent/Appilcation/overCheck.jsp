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
<title>아이디중복확인</title>
</head>
<body>
<h1>중복확인</h1>
<%
request.setCharacterEncoding("utf-8");
String id=request.getParameter("id");


Class.forName("com.mysql.jdbc.Driver");
String a="jdbc:mysql://localhost:3306/jspdb5"; 
String b="jspid" ;
String c="jsppass";
Connection con=DriverManager.getConnection(a, b, c);
String sql="select * from appilcant where id=? ";

PreparedStatement ps=con.prepareStatement(sql);
ps.setString(1, id);
ResultSet rs=ps.executeQuery();

if(rs.next()){
	
%>
<script type="text/javascript">
	alert("사용불가아이디입니다")
	history.back();
	
	</script>

<% 
}else{
	%> 
<script type="text/javascript">
alert("사용가능한아이디입니다")

 	history.back();
	</script>
 	<%  
 }
%> 
</body>
</html>