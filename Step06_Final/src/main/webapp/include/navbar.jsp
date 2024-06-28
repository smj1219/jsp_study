<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%-- 
	웹브라우저에 출력되지 않는 jsp 페이지에서의 주석 입니다.
 --%>
 <!-- 
 	웹브라우저에 출력되지만 웹브라우저가 무시하는 주석 
  -->
 <%
	//navbar.jsp 페이지가 어떤 페이지에 include 되었는지 정보 읽어오기
	String currentPage=request.getParameter("current"); // "index" or "member" or "guest" 
 %>
<nav class="navbar bg-primary navbar-expand-md" data-bs-theme="dark">
	<div class="container">
		<a class="navbar-brand" href="${pageContext.request.contextPath }/index.jsp">Acorn</a>
		<button class="navbar-toggler" data-bs-toggle="collapse" data-bs-target=".navbar-collapse">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse">
			<ul class="navbar-nav me-auto">	
				<li class="nav-item">
					<a class="nav-link <%=currentPage.equals("file") ? "active":"" %>" href="${pageContext.request.contextPath }/file/list.jsp">자료실</a>
				</li>
				<li class="nav-item">
					<a class="nav-link <%=currentPage.equals("cafe") ? "active":"" %>" href="${pageContext.request.contextPath }/cafe/list.jsp">글목록</a>
				</li>
			</ul>
			<div class="navbar-nav">
	      		<c:choose>
	      			<c:when test="${ not empty id}">
		      			<a class="nav-link" href="${pageContext.request.contextPath}/user/private/info.jsp">${id }</a>
			      		<a class="nav-link" href="${pageContext.request.contextPath}/user/logout.jsp">로그아웃</a>
	      			</c:when>
	      			<c:otherwise>
		      			<a class="nav-link" href="${pageContext.request.contextPath}/user/loginform.jsp">로그인</a>
			      		<a class="nav-link" href="${pageContext.request.contextPath}/user/signup_form.jsp">회원가입</a>
	      			</c:otherwise>
	      		</c:choose>
      		</div>
		</div>
	</div>
</nav>    






