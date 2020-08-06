<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>jsp2/sessionLoginPro.jsp</h1>
<%
// request 요청정보 "id" "pass" 가져오기
request.setCharacterEncoding("utf-8");
String id= request.getParameter("id");
String pass= request.getParameter("pass");

%>
폼에서 가져온 아이디:<%=id %><br>
폼에서 가져온 비밀번호:<%=pass %><br>
<%
// 데이터 베이스에 저장되어있는 아이디 "admin" 비밀번호 "p123"
String dbID="admin";
String dbPass="p123";

%>

데이터베이스에 저장되어있는 아이디:<%=dbID %><br>
데이터베이스에 저장되어있는 아이디:<%=dbPass %><br>

<%
//아이디 비교   폼 아이디.equals(db아이디)
  if(id.equals(dbID)){
	 //아이디 일치여부
	 out.println("아이디 일치");
	  if(pass.equals(dbPass)){
		  //비밀번호 일치여부
		  out.println("비밀번호 일치");
		  session.setAttribute("id", id);
		response.sendRedirect("sessionMain.jsp"); 
		
 //<script type="text/javascript"> 
		 //alert("로그인완료")
		 // location.href="sessionMain.jsp";
 	  //</script> 

	  }else{
		  out.println("비밀번호 불일치");
	  }
  }else{
	  out.println("아이디 불일치");
  }

%>


</body>
</html>