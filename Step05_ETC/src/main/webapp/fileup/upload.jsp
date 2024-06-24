<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//파일 시스템 상에서 webapp 의 upload 폴더 까지의 정대 경로를 알아낸다.
	String realPath=application.getRealPath("/upload");
	//해당 경로의 access 할 수 있는 파일 객체 생성
	File f= new File(realPath);
	if(!f.exists()){//만일 폴더가 존재하지 않으면
		f.mkdir();//upload 폴더 만들기
	}
	// cos.jar 에 있는 MultipartRequest 객체 생성하기
	MultipartRequest mr=new MultipartRequest(request, 
			realPath, //업로드된 파일의 경로
			1024*1024*100, //최대 업로드 사이즈 제한
			"utf-8",//한글 파일명 꺠지지 않도록 설정
			new DefaultFileRenamePolicy());
	/*
		 위의 MultipartRequest 객체가 예외가 발생하지 않고 잘 생성되었다면 파일 업로드가 성공된 것이다
		 따라서  mr에 들어있는 참조값을 이용해서 폼전송된 값을 추출해서 DB에 저장만 잘하면 된다
	*/
	//title 이라는 파라미터명으로 전잘되는 파일의 제목(설명) 얻어내기
	String title=mr.getParameter("title");
	//업로드 된 파일의 언본 파일명
	String orgFileName=mr.getOriginalFileName("myFile");
	//업로드된 파일이 저장된 파일명(원본 파일명이랑 다를수있다)
	String saveFileName=mr.getFilesystemName("myFile");
	//업로드된 파일의 크기(다운로드 해줄때 필요하다)
	long fileSize=mr.getFile("myFile").length();
	/*
		webapp/upload 폴더에 파일을 저장을 했는데...
		그 폴더가 실제 서버의 파일 시스템에서 어디에 위치하고 있는지 출력해보기
	*/
	//System.out.println(realPath);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>
		title : <strong><%=title %></strong> <br />
		원본 파일명 : <strong><%=orgFileName %></strong> <br />
		저장된 파일명 : <strong><%=saveFileName %></strong> <br />
		파일의 크기 : <strong><%=fileSize %></strong> byte <br />
		파일이 저장된 실제 경로 : <strong><%=realPath %></strong> <br />
		<a href="${pageContext.request.contextPath}/test/download?orgFileName=<%=orgFileName%>&saveFileName=<%=saveFileName%>&fileSize=<%=fileSize%>">다운로드</a>
	</p>
</body>
</html>