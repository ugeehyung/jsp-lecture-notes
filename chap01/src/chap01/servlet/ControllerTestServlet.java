package chap01.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/*
/chap01/controltest에 
GET 방식으로 요청하는(그냥 주소창에 주소 입력 + enter 치는 것도 GET방식 요청이다) 사용자: 페이지를 고를 수 있는 form (select_page.jsp),
POST 방식으로 요청하는 사용자: 사용자가 고른 페이지를 forward 해주는 servlet 만들기
*/

@WebServlet("/controltest")
public class ControllerTestServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.getRequestDispatcher("/jsp/2_dispatch/select_page.jsp").forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		response.setCharacterEncoding("UTF-8");
		int page_num;
		
		try {
			page_num = Integer.parseInt(request.getParameter("page"));
		} catch (NumberFormatException e) {
			page_num = 0;
		}
		request.getRequestDispatcher("/jsp/2_dispatch/view/page" + page_num + ".jsp").forward(request, response);
	}

}
