<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id=request.getParameter("id");
	String pwd=request.getParameter("pwd");
	
	//로그인 성공여부 담을 변수 선언하기
	boolean isLoginSuccess=false;
	//가상의 로그인 처리
	if(id.equals("gura") && pwd.equals("1234")){//만일 아이디, 비밀번호가 모두 일치하면
		//로그인 처리하기 (session 영역에 id 라는 키값으로 로그인된 아이디를 담는다)
		session.setAttribute("id", id);
		//로그인 성공이라고 표시
		isLoginSuccess=true;
	}

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<%if(isLoginSuccess){ %>
			<p>
				<strong>${id }</strong> 님이 로그인 되었습니다.
				<a href="${pageContext.request.contextPath }/">확인</a>
			</p>
		<%}else{ %>
			<p>
				아이디 혹은 비밀번호가 틀려요
				<a href="${pageContext.request.contextPath }/user/loginform.jsp">다시 로그인</a>
			</p>	
		<%} %>
	</div>
</body>
</html>