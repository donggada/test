<%@page import="java.util.ArrayList"%>
<%@page import="member.MemberBean"%>
<%@page import="member.MemberDAO"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
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
<h1>jsp5/list.jsp</h1>
<%
request.setCharacterEncoding("utf-8");
String id=(String)session.getAttribute("id");
// if(id==null){
// 	response.sendRedirect("loginForm.jsp");
// }else if(!(id.equals("admin"))){
// 	response.sendRedirect("main.jsp");
// }
MemberDAO mdao=new MemberDAO();

int count=mdao.getcount();

int pagesize=5;
String pageNum=request.getParameter("pageNum");
if(pageNum==null){
	pageNum="1";
}
int ipageNum=Integer.parseInt(pageNum);
int start=(ipageNum-1)*pagesize+1;
int end=ipageNum*pagesize;


ArrayList list=mdao.selectMember(start-1,end);
%>
<table border="1">
<tr><td>아이디</td><td>이름</td> <td>비밀번호</td> </tr>
<% for(Object o:list){   MemberBean mb=(MemberBean)o;
	%>
<tr><td><%=mb.getId() %></td><td><%=mb.getName() %></td><td><%=mb.getPass()%></td></tr>

<%
}
%>
<tr><td colspan="6" align="center">
					<%	// 페이징  처리
						if(count > 0){
							// 총 페이지의 수
							int pageCount = count / pagesize + (count%pagesize == 0 ? 0 : 1);
							// 한 페이지에 보여줄 페이지 블럭(링크) 수
							int pageBlock = 10;
							// 한 페이지에 보여줄 시작 및 끝 번호(예 : 1, 2, 3 ~ 10 / 11, 12, 13 ~ 20)
							int startPage = ((ipageNum-1)/pageBlock)*pageBlock+1;
							int endPage = startPage + pageBlock - 1;
							
							// 마지막 페이지가 총 페이지 수 보다 크면 endPage를 pageCount로 할당
							if(endPage > pageCount){
								endPage = pageCount;
							}
							
							if(startPage > pageBlock){ // 페이지 블록수보다 startPage가 클경우 이전 링크 생성
					%>
								<a href="list.jsp?pageNum=<%=startPage - 10%>">[이전]</a>	
					<%			
							}
							
							for(int i=startPage; i <= endPage; i++){ // 페이지 블록 번호
								if(i == ipageNum){ // 현재 페이지에는 링크를 설정하지 않음
					%>
									[<%=i %>]
					<%									
								}else{ // 현재 페이지가 아닌 경우 링크 설정
					%>
									<a href="list.jsp?pageNum=<%=i%>">[<%=i %>]</a>
					<%	
								}
							} // for end
							
							if(endPage < pageCount){ // 현재 블록의 마지막 페이지보다 페이지 전체 블록수가 클경우 다음 링크 생성
					%>
								<a href="list.jsp?pageNum=<%=startPage + 10 %>">[다음]</a>
					<%			
							}
							
						}
					%></td></tr>
</table>
</body>
</html>