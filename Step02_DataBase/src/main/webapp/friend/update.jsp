<%@page import="test.friend.dto.FriendDto"%>
<%@page import="test.friend.dao.FriendDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	int num=Integer.parseInt(request.getParameter("num"));
	String name=request.getParameter("name");
	int phone=Integer.parseInt(request.getParameter("phone"));
	
	FriendDto dto=new FriendDto(num,name,phone);
	boolean isSuccess=new FriendDao().update(dto);


%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<h3>알림</h3>
		<%if(isSuccess){ %>
			<p class="alert alert-success">
				<strong><%=name %></strong>의 정보를 수정하였습니다.
				<a class="alert-link" href="${pageContext.request.contextPath}/friend/list.jsp">친구 목록보기</a>
			</p>
		<%}else{ %>
			<p class="alert alert-danger">
				수정 실패!
				<a class="alert-link" href="${pageContext.request.contextPath}/friend/insertform.jsp">다시 작성</a>
			</p>
		<%} %>
	</div>
</body>
</html>