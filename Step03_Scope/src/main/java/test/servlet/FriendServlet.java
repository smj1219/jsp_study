package test.servlet;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import test.friend.dto.FriendDto;

@WebServlet("/friend")
public class FriendServlet extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//친구 정보를 담고
		FriendDto dto=new FriendDto();
		dto.setNum(1);
		dto.setName("김구라");
		dto.setPhone(01012341234);
		//request scope 에 담기
		req.setAttribute("friend", dto);
		//위임
		RequestDispatcher rd=req.getRequestDispatcher("friend");
		rd.forward(req, resp);
	}
}
