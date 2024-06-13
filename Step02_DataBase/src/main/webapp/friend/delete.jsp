<%@page import="test.friend.dao.FriendDao"%>
<%@page import="test.friend.dto.FriendDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	int num=Integer.parseInt(request.getParameter("num"));
	boolean isSuccess=new FriendDao().delete(num);
	
	String cPath=request.getContextPath();
	response.sendRedirect(cPath+"/friend/list.jsp");

%>
