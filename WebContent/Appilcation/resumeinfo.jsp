<%@page import="applicant.DTO"%>
<%@page import="applicant.DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");
String id=(String)session.getAttribute("id");
DAO dao=new DAO();
DTO dto=dao.selectre(id);
out.print(id);
%>


<table border="1">
<tr><th colspan="2" rowspan="5">사진</th><th>성명</th><td><%=dto.getName()%></td><th>영문</th><td><%=dto.getEngname() %></td></tr>
<tr><th>생년월일</th><td colspan="4"></td></tr>
<tr><th>휴대폰</th><td ><%=dto.getHp() %></td><th>전화번호</th><td><%=dto.getTel() %></td></tr>
<tr><th>e-mail</th><td colspan="4"><%=dto.getEmail() %></tr>
<tr><th>주소</th><td colspan="4"><%=dto.getAddres() %></tr>
</table>
<br>
<table border="1">
<tr><th>자격증</th><td colspan="4"><%=dto.getEas()%></td></tr>
<tr><th>어학</th><td colspan="4"><%=dto.getLang()%></td></tr>

</table>
<br>
<table border="1">
<tr><th>고등학교</th><td colspan="4"><%=dto.getHighs() %></td></tr>
<tr><th>대학교</th><td colspan="4" ><%=dto.getUniver()%></td></tr>
</table>

<table border="1">
<tr><td>자소서 1번 항목</td></tr>
<tr><td><%=dto.getLetter1() %></td></tr>
<tr><td>자소서 2번 항목</td></tr>
<tr><td><%=dto.getLetter2() %></td></tr>
<tr><td>자소서 3번 항목</td></tr>
<tr><td><%=dto.getLetter3() %></td></tr>
</table>
<input type="button" value="나가기" onclick="Main.jsp">

</body>
</html>