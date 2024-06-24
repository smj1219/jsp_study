<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>user/login.jsp</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<h1>로그인 폼</h1>
		<form action="login.jsp" method="post">
			<div class="input-group mb-3">
				<span class="input-group-text" id="basic-addon1">아이디</span>
				<input class="form-control" type="text" name="id" id="id" />
			</div>
			<div class="input-group mb-3">
				<span class="input-group-text" id="basic-addon1">비밀번호</span>
				<input class="form-control" type="text" name="pwd" id="pwd" />
			</div>
			<button class="btn btn-primary" type="submit">로그인</button>
		</form>
	</div>
</body>
</html>