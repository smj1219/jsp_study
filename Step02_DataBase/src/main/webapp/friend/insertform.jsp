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
	<h3>친구 추가 양식</h3>
	
		<form action="${pageContext.request.contextPath}/friend/insert.jsp" method="post">
			<div class="input-group mb-3">
			<span class="input-group-text">이름</span>
			<input type="text" class="form-control" name="name"/>
			<span class="input-group-text">번호</span>
			<input type="text" name="phone" class="form-control" />
			<button class="btn btn-outline-primary btn-sm" type="submit">추가</button>
		</div>
		</form>
	
</body>
</html>