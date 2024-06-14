<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<input type="text" id="msg" placeholder="메세지 입력..." />
	<button id="sendBtn">전송</button>
	<script>
		document.querySelector("#sendBtn").addEventListener("click",()=>{
			//입력한 문자열 읽어오기
			const msg=document.querySelector("#msg").value;
			//fatch 함수를 호출하면서 GET방식으로 파라미터로 send.jsp 페이지를 요청하면서 전달한다.
			fetch("send.jsp?msg="+msg)
			.then(res=>res.text())
			.then((data)=>{
				console.log(data)
			})
			
		})
		
	</script>
	
</body>
</html>