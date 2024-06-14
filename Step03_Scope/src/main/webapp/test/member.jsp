<%@page import="test.member.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// request 영역에 "dto" 라는 key값으로 담긴 MemberDto 객체 얻어오기
	MemberDto dto=(MemberDto)request.getAttribute("dto");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>회원 한 명의 정보입니다.</h3>
	<p>번호 : <%=dto.getNum() %></p>
	<p>이름 : <%=dto.getName() %></p>
	<p>주소 : <%=dto.getAddr() %></p>
	
	<%--
		EL 을 이용하면 dto의 필드에 있는 값을 편하게 출력할 수 있다.
		
		${dto.getNum} or ${dto.num}
		
		위와 같이 필드명만 적어도 자동으로 dto 의 getter 메소드를 호출해준다.
	 --%>
	<h3>EL 을 이용하면</h3>
	<p>번호 : ${dto.num}</p>
	<p>이름 : ${dto.name}</p>
	<p>주소 : ${dto.addr}</p>
</body>
</html>