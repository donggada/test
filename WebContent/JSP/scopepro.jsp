<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>jsp1/scopepro.jsp</h1>
<%
request.setCharacterEncoding("utf-8");

String id=request.getParameter("id");
String pass=request.getParameter("pass");
//내장객체 값 저장
//해당페이지 저장
pageContext.setAttribute("page","pageContext value" );
//사용자의 요청 값저장
request.setAttribute("req", "request value");
//연결 정보를 저장하는 session에기억장소에 값저장
session.setAttribute("ses", "session value");
//웹애플리케이션이 실행되고 있는동안(웹 서버 start 되는동안) 값저장
application.setAttribute("app", "application value");
%>
아이디:<%=id %><br>
비밀번호:<%=pass %><br>
pageContext 저장된 값:<%=pageContext.getAttribute("page") %><br>
request 저장된 값: <%=request.getAttribute("req") %><br>
session 저장된 값: <%=session.getAttribute("ses") %><br>
application 저장된 값:<%=application.getAttribute("app") %><br>
<hr>
<a href="scopepropro.jsp">scopepropro.jsp 이동 </a><br>

<script type="text/javascript">
// alert("scopepropro.jsp 이동");
<%-- location.href="scopepropro.jsp?id=<%=id%> &pass=<%=pass%>"; --%>




</script>
<%
//우선
// response.sendRedirect("scopepropro.jsp?id="+id+"&pass="+pass);


//액션태그 : 태그처럼 사용할수 있는 jsp문법
//forward 액션태그:page  이동
//									1.pro.jsp 에서 propro.jsp이동
//									   주소줄에서 pro.jsp 실행화면 propro.jsp
//									2.pro.jsp 에있는 request값을 모두 들고 propro.jsp감
%>
<jsp:forward page="scopepropro.jsp"/>

	














</body>
</html>