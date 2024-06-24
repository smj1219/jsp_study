<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<c:choose>
		<%--${empty sessionScope.id } 는 session 영역에 id 라는 키값으로 저장된 게 없는지 여부를 알 수가 있다.
		저장된 게 없으면 로그인을 하지않은 상태!
		 --%>
			<c:when test="${empty sessionScope.id }">
				<a href="${pageContext.request.contextPath }/user/loginform.jsp">로그인 하러가기</a>
			</c:when>
			<c:otherwise>
				<p>
					<strong>${sessionScope.id }</strong> 님 로그인중...
					<a href="${pageContext.request.contextPath }/user/logout.jsp">로그아웃</a>
				</p>
			</c:otherwise>
		</c:choose>
		
		<h1>인덱스 페이지입니다.</h1>
		<ul>
			<li><a href="${pageContext.request.contextPath }/user/loginform.jsp">로그인 하러가기</a></li>
			<li><a href="${pageContext.request.contextPath }/game/play.jsp">놀러가기</a></li>
			<li><a href="${pageContext.request.contextPath }/cafe/insertform.jsp">글쓰기</a></li>
		</ul>
	</div>
</body>
</html>