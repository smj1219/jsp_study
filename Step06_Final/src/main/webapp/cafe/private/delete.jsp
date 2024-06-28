<%@page import="test.cafe.dao.CafeDao"%>
<%@page import="test.cafe.dto.CafeDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//1. GET 방식의 파라미터로 전달되는 삭제할 파일의 글번호 불러오기
	int num=Integer.parseInt(request.getParameter("num"));
	//2. 로그인된 아이디외 글의 작성자가 일치하는지 확인해서 일치하지 않으면 에러 페이지를 응답한다
	CafeDto dto=CafeDao.getInstance().getData(num);
	String id=(String)session.getAttribute("id");
	if(!dto.getWriter().equals(id)){
		//에러페이지를 응답하도록 한다.  .sendError(에러코드, 에러메세지) 
		response.sendError(HttpServletResponse.SC_FORBIDDEN , "남의 파일 지우면 혼난다!");
		return; //메소드를 여기서 끝내기 (service() 메소드)
	}
	//3. DB 에서 파일 정보 삭제하기
	CafeDao.getInstance().deleteRef(num);
	CafeDao.getInstance().delete(num);
	//4. 응답하기 
	String cPath=request.getContextPath();
	response.sendRedirect(cPath+"/cafe/list.jsp"); //파일 목록보기로 다시 리다일렉트 이동 시킨다.

%>