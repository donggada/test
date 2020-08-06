<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Driver"%>
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
<h1>jsp5/updatepro.jsp</h1>


<%
String id=(String)session.getAttribute("id");
String pass=request.getParameter("pass");
request.setCharacterEncoding("utf-8");
String name=request.getParameter("name");





Class.forName("com.mysql.jdbc.Driver");
String a="jdbc:mysql://localhost:3306/jspdb5"; 
String b="jspid" ;
String c="jsppass";
Connection con=DriverManager.getConnection(a, b, c);
String sql="select *from member where id=?";

PreparedStatement ps=con.prepareStatement(sql);
ps.setString(1, id);
ResultSet rs=ps.executeQuery();
if(rs.next()){
	out.print("아이디있음");
	if(pass.equals(rs.getString("pass"))){
		out.print("비밀번호맞음");
		sql="update member set name=? where id=?";
		 ps=con.prepareStatement(sql);
		ps.setString(1, name);
		ps.setString(2, id);
		 ps.executeUpdate();
		 %>
		 <script type="text/javascript">
		 alert("수정완료");
		 location.href="Main.jsp";
		 </script>
		 <%
	}else{
		out.print("비밀번호틀림");
	}
}else{
	out.print("아이디없음");
}
		
		

	


			 
	
		 



%>
</body>
</html>