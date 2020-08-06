<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 바꾸기</title>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");
String id=request.getParameter("id");
String pass=request.getParameter("pass");
String pass1=request.getParameter("pass1");



if(pass.equals(pass1)){

Class.forName("com.mysql.jdbc.Driver");
String a="jdbc:mysql://localhost:3306/jspdb5"; 
String b="jspid" ;
String c="jsppass";
Connection con=DriverManager.getConnection(a, b, c);
String sql="update appilcant set password=? where id=?";

PreparedStatement ps=con.prepareStatement(sql);
ps.setString(1, pass);
ps.setString(2, id);
ps.executeUpdate();
%>
<script type="text/javascript">
alert("수정완료")
<%session.invalidate();%>
location.href="loginForm.jsp"
</script><%
}else{
	%>
	<script type="text/javascript">
	alert("비밀번호가 다릅니다")
	history.back();
	</script> 
	<%}  
	%>


</body>
</html>