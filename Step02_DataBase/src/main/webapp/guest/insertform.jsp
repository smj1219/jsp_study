<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<nav>
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/">Home</a></li>
				<li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/guest/list.jsp">방명록</a></li>
				<li class="breadcrumb-item active">방명록 작성</li>
			</ol>
		</nav>
		<h1>좋은 글 남겨주세요</h1>
		<form action="${pageContext.request.contextPath}/guest/insert.jsp" method="post">
			<div class="input-group mb-3">
				<span class="input-group-text" id="basic-addon1">작성자</span>
			 	<input class="form-control" type="text" id="writer" name="writer" />
			</div>
			<div class="form-floating mb-3">
			 	<textarea class="form-control" placeholder="내용 입력..." style="height: 200px" name="content" id="content" ></textarea>
				<label for="content">내용</label>
			</div>
			<div class="form-floating mb-4">
			 	<input class="form-control" placeholder="비밀번호 입력..." type="password" id="pwd" name="pwd" />
			 	<label for="floatingPassword">Password</label>
			</div>
			<button type="submit" class="btn btn-outline-primary">save
				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-save" viewBox="0 0 16 16">
				  <path d="M2 1a1 1 0 0 0-1 1v12a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H9.5a1 1 0 0 0-1 1v7.293l2.646-2.647a.5.5 0 0 1 .708.708l-3.5 3.5a.5.5 0 0 1-.708 0l-3.5-3.5a.5.5 0 1 1 .708-.708L7.5 9.293V2a2 2 0 0 1 2-2H14a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V2a2 2 0 0 1 2-2h2.5a.5.5 0 0 1 0 1z"/>
				</svg>
			</button>
		</form>
	</div>
	<jsp:include page="/include/footer.jsp"></jsp:include>
</body>
</html>