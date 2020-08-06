<%@page import="org.json.simple.JSONObject"%>
<%@page import="netscape.javascript.JSObject"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="member.MemberBean"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//js_jQuery2/json2.jsp

Class.forName("com.mysql.jdbc.Driver");
String a="jdbc:mysql://localhost:3306/jspdb5"; 
String b="root" ;
String c="12345678";
Connection con=DriverManager.getConnection(a, b, c);
String sql="select *from member";
PreparedStatement ps=con.prepareStatement(sql);
ResultSet rs=ps.executeQuery();

List memberList=new ArrayList();
while(rs.next()){
// 	MemberBean mb=new MemberBean();
JSONObject mb =new JSONObject();
mb.put("id", rs.getString("id"));
mb.put("pass", rs.getString("pass"));
mb.put("name", rs.getString("name"));


	
	
// 	mb.setId(rs.getString("id"));
// 	mb.setPass(rs.getString("pass"));
// 	mb.setName(rs.getString("name"));
	memberList.add(mb);
	
}






%>
<%=memberList%>