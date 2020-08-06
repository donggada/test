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
	<%
		request.setCharacterEncoding("utf-8");
	
	String name = request.getParameter("name");
	String jumin = request.getParameter("jumin");

	Class.forName("com.mysql.jdbc.Driver");
	String a = "jdbc:mysql://localhost:3306/jspdb5";
	String b = "jspid";
	String c = "jsppass";
	Connection con = DriverManager.getConnection(a, b, c);
	String sql = "select * from appilcant where jumin=? ";

	PreparedStatement ps = con.prepareStatement(sql);
	ps.setString(1, jumin);
	ResultSet rs = ps.executeQuery();

	if (rs.next()) {
		if (name.equals(rs.getString("name"))) {
			 	String id=rs.getString("id");
			} else {
	%>
	<script type="text/javascript">
		alert("이름을 확인해주세요");
		history.back();
	</script>
	<%
		}

	} else {
	%>
	<script type="text/javascript">
		alert("주민번호를 확인해주세요");
		history.back();
	</script>
	<%
		}
String checkid=rs.getString("id");
	int checkidnum=checkid.length()-2;
	String subst=checkid.substring(checkidnum);
	String reid=checkid.replace(subst, "**");
	%>

<input type="text" value="<%=reid%>"><br>
<input type="button"  value=" 확인" onclick="location.href='loginForm.jsp'">


</body>
</html>