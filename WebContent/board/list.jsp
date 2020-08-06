
<%@page import="java.util.ArrayList"%>
<%@page import="board.BoardDTO"%>
<%@page import="java.util.List"%>
<%@page import="board.BoardDAO"%>
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
<title>Insert title here</title>
</head>
<body>
<%

BoardDAO bdao=new BoardDAO();
ArrayList boardList=bdao.selectboard();

%>

<h3><a href="writeForm.jsp">글쓰기</a></h3>
<table border="1">
<tr><td>글번호</td><td>제목</td><td>작성자</td>
    <td>날짜</td><td>조회수</td></tr>
    <%
    // 5단계 while 다음행 이동  num,subject,name,date,readcount 열 가져오기
    for(Object o:boardList){
    	BoardDTO bb=(BoardDTO)o;
    	%>
   <tr><td><%=bb.getNum() %></td>
       <td><a href="content.jsp?num=<%=bb.getNum()%>">
       <%=bb.getSubject() %></a></td>
       <td><%=bb.getName() %></td>
       <td><%=bb.getDate() %></td>
       <td><%=bb.getReadcount() %></td></tr> 
<tr><td colspan="2"><input type="button" value="답글쓰기" onclick="reWirteForm.jsp?num<%=bb.getNum()%>&re_ref<%=bb.getRe_ref()%>&re_lev<%=bb.getRe_lev()%>&re_seq<%=bb.getRe_seq()%>"></td></tr>
    	<%
    }
    %>
  


</body>
</html>






