<%@page import="test.guest.dto.GuestDto"%>
<%@page import="test.guest.dao.GuestDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//1. 폼전송되는 수정할 방명록 내용을 불러온다
	int num=Integer.parseInt(request.getParameter("num"));
	String writer=request.getParameter("writer");
	String content=request.getParameter("content");
	String pwd=request.getParameter("pwd");
	//2. 비밀번호가 일치하는지 확인
	GuestDao dao=GuestDao.getInstance();
	//DB에 저장된 비밀번호 읽어오기
	String savePwd=dao.getData(num).getPwd();
	//작업의 성공여부를 저장할 변수를 만들고 false를 초기값으로 부여한다.
	boolean isSuccess=false;
	//비밀번호가 일치하는지 확인
	if(pwd.equals(savePwd)){
		//GuestDto 에 수정할 글정보를 담고
		GuestDto dto=new GuestDto();
		dto.setNum(num);
		dto.setWriter(writer);
		dto.setContent(content);
		dto.getPwd();
		//GuestDao 객체를 이용해서 수정반영하고 성공여부를 리턴받는다.
		isSuccess=dao.update(dto);
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
		<h3>알림</h3>
		<%if(isSuccess){ %>
			<p>
				<strong><%=writer %></strong> 님이 작성한 글이 수정되었습니다.
				<a href="guest/list.jsp">목록보기</a>
			</p>
		<%} else{ %>
			<p>
				수정 실패!
				<a href="updateform.jsp?num=<%=num%>">다시 수정</a>
			</p>
		<%} %>
	</div>
</body>
</html>