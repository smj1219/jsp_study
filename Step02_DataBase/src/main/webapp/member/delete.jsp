<%@page import="test.member.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	//1. GET 방식 파라미터로 전될되는 삭제할 회원의 번호를 얻어온다.
	int num = Integer.parseInt(request.getParameter("num"));
	//2. MemberDao 객체를 이용해서 실제 DB에서 삭제
	boolean isSuccess=new MemberDao().delete(num);
	//3. 응답하기
	//특정 경로로 요청을 다시 하라는 Redirect 응답하기
	// list.jsp => delete.jsp =>list.jsp 
	//위와 같은 이동이기때문에 마치 새로고침하는 듯한 느낌을 줄 수 있다
	String cPath=request.getContextPath();
	response.sendRedirect(cPath+"/member/list.jsp");
%>
