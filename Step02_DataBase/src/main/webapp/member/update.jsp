<%@page import="test.member.dao.MemberDao"%>
<%@page import="test.member.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//1. 수정할 회원의 번호, 이름, 주소를 추출한다.
	int num = Integer.parseInt(request.getParameter("num"));
	String name=request.getParameter("name");
	String addr=request.getParameter("addr");
	
	//2. DB에 수정 반영한다.
	MemberDto dto=new MemberDto(num, name, addr);
	boolean isSuccess=new MemberDao().update(dto);
	//3. 응답한다.
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/member/update.jsp</title>
</head>
<body>
	<script>
		/*
			javascript 를 로딩시켜서 Redirect 응답한 것과 같은 효과내기
			location.href= "이동할 경로";
		*/
		<%if(isSuccess){ %>
			alert("수정 했습니다");
			location.href="${pageContext.request.contextPath }/member/list.jsp";
		<%}else{ %>
			alert("수정 실패!");
			location.href="${pageContext.request.contextPath}/member/updateform.jsp?num=<%=num %>";
		<%} %>
	</script>
</body>
</html>