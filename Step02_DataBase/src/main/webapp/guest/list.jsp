<%@page import="java.util.List"%>
<%@page import="test.guest.dto.GuestDto"%>
<%@page import="test.guest.dao.GuestDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<%
	//GuestDao 객체의 참조값 얻어오기
	GuestDao dao=GuestDao.getInstance();
	//글목록 얻어오기
	List<GuestDto> list=dao.getList();
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</head>
<body>
	<jsp:include page="/include/navbar.jsp">
		<jsp:param value="guest" name="current"/>
	</jsp:include>
	<div class="container">
		<a href="${pageContext.request.contextPath}/guest/insertform.jsp">
			<span class="visually-hidden">새글작성</span>
			<svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="currentColor" class="bi bi-chat-right-quote" viewBox="0 0 16 16">
			  <path d="M2 1a1 1 0 0 0-1 1v8a1 1 0 0 0 1 1h9.586a2 2 0 0 1 1.414.586l2 2V2a1 1 0 0 0-1-1zm12-1a2 2 0 0 1 2 2v12.793a.5.5 0 0 1-.854.353l-2.853-2.853a1 1 0 0 0-.707-.293H2a2 2 0 0 1-2-2V2a2 2 0 0 1 2-2z"/>
			  <path d="M7.066 4.76A1.665 1.665 0 0 0 4 5.668a1.667 1.667 0 0 0 2.561 1.406c-.131.389-.375.804-.777 1.22a.417.417 0 1 0 .6.58c1.486-1.54 1.293-3.214.682-4.112zm4 0A1.665 1.665 0 0 0 8 5.668a1.667 1.667 0 0 0 2.561 1.406c-.131.389-.375.804-.777 1.22a.417.417 0 1 0 .6.58c1.486-1.54 1.293-3.214.682-4.112z"/>
			</svg>
		</a>
		<h1>방명록 목록입니다.</h1>
		<table class="table table-bordered table align-middle">
		<%--colgroup 안에 있는 col 요소의 폭이 칼럼 폭으로 지정된다. --%>
			<colgroup>
				<col class="col-1"/>
				<col class="col-2"/>
				<col class="col-4"/>
				<col class="col-2"/>
				<col class="col-1"/>
				<col class="col-2"/>
			</colgroup>
			<thead>
				<tr class="table-primary table align-middle">
					<th>번호</th>
					<th>작성자</th>
					<th>내용</th>
					<th>등록일</th>
					<th>수정</th>
					<th>삭제</th>
				</tr>
			</thead>
			<tbody>
				<%for(GuestDto tmp:list){ %>
				<tr>
					<td><%=tmp.getNum() %></td>
					<td><%=tmp.getWriter() %></td>
					<td>
						<textarea class="form-control" rows="5" readonly><%=tmp.getContent() %></textarea>
					</td>
					<td><%=tmp.getRegdate() %></td>
					<td><a href="updateform.jsp?num=<%=tmp.getNum()%>">
					 	<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16">
  							<path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
  							<path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5z"/>
						</svg>
					</a></td>
					<td>
						<form action="delete.jsp" method="post">
							<!-- 화면상에 보이지는 않지만 폼 전송될 때 같이 전송되는 input -->
							<input type="hidden" name="num" value="<%=tmp.getNum() %>" />
							<div class="input-group mb-3">
								<input type="text" class="form-control" name="pwd" />
								<button class="btn btn-outline-primary btn-sm" type="submit">삭제</button>
							</div>
						</form>
					</td>
				</tr>
				<%} %>
			</tbody>
		</table>
	</div>
	<jsp:include page="/include/footer.jsp"></jsp:include>
</body>
</html>