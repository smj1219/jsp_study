<%@page import="test.friend.dto.FriendDto"%>
<%@page import="test.member.dto.MemberDto"%>
<%@page import="test.friend.dao.FriendDao"%>
<%@page import="test.member.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String name=request.getParameter("name");
	int phone=Integer.parseInt(request.getParameter("phone"));
	
	FriendDto dto=new FriendDto();
	dto.setName(name);
	dto.setPhone(phone);
	
	boolean isSuccess=new FriendDao().insert(dto);

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<script>
		<%if(isSuccess){%>
			alert("저장 되었습니다.");
			location.href="${pageContext.request.contextPath}/friend/list.jsp";
		<%} else {%>
			alert("저장에 실패하였습니다.");
			location.href="${pageContext.request.contextPath}/friend/insertform.jsp";
		<%}%>
	
	</script>
</body>
</html>