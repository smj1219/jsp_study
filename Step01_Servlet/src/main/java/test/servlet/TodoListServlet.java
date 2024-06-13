package test.servlet;
/*
 *   /todo/list 요청을 처리할 TodoListservelt 을 만들어보세요
 *   
 *   List<String> 에 할일을 3개 담아서 할일을  ul li 를 활용해서 클라이언트에게 출력해보세요
 *   
 *   할일은 참고로 "html 공부하기", "css 공부하기", "javascript 공부하기"
 */
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/todo/list")
public class TodoListServlet extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<String> todo=new ArrayList<>();
		todo.add("html 공부하기");
		todo.add("css 공부하기");
		todo.add("javascript 공부하기");
		//응답 인코딩 설정
		resp.setCharacterEncoding("utf-8");
		//응답 컨텐트 설정
		resp.setContentType("text/html; charset=utf-8");
		//요청을 한 클라이언트에게 문자열을 출력할수 있는 객체의 참조값 얻어내기
		PrintWriter pw = resp.getWriter();
		pw.println("<!doctype html>");
		pw.println("<html>");
		pw.println("<head>");
		pw.println("<meta charset='utf-8'>");
		pw.println("<title>todo list 페이지</title>");
		pw.println("</head>");
		pw.println("<body>");
			pw.println("<h3>할 일 목록입니다.</h3>");
			pw.println("<ul>");
				for(String tmp:todo) {
					pw.println("<li>"+tmp+"</li>");
				}
			pw.println("</ul>");
		pw.println("</body>");
		pw.println("</html>");
		pw.close();
	}
}