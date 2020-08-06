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
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String jumin = request.getParameter("jumin");

	Class.forName("com.mysql.jdbc.Driver");
	String a = "jdbc:mysql://localhost:3306/jspdb5";
	String b = "jspid";
	String c = "jsppass";
	Connection con = DriverManager.getConnection(a, b, c);
	String sql = "select * from appilcant where id=? ";

	PreparedStatement ps = con.prepareStatement(sql);
	ps.setString(1, id);
	ResultSet rs = ps.executeQuery();

	if (rs.next()) {
		if (name.equals(rs.getString("name"))) {
			if (jumin.equals(rs.getString("jumin"))) {
				session.setAttribute(id, "id");
		response.sendRedirect("updatepass.jsp");
			} else {
	%>
	<script type="text/javascript">
		alert("주민등록번호를 확인해주세요");
		history.back();
	</script>
	<%
		}

	} else {
	%>
	<script type="text/javascript">
		alert("이름을 확인해주세요");
		history.back();
	</script>
	<%
		}
	} else {
		out.println("아이디없음");
	%>
	<script type="text/javascript">
		alert("아이디없음");
		history.back();
	</script>
	<%
		}
	%>




</body>
</html>