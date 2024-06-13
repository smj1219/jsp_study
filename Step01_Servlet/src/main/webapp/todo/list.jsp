<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	List<String> todo=new ArrayList<>();
	todo.add("html 공부하기");
	todo.add("css 공부하기");
	todo.add("javascript 공부하기");    
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/todo/list.jsp</title>
</head>
<body>
	<h3>할 일 목록입니다.</h3>
	<ui>
		<%for(String tmp:todo) { %>
			<li><%=tmp %></li>
		<%} %>
	</ui>
</body>
</html>