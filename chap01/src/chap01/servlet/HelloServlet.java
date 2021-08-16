package chap01.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/hello")//이 서블릿으로 접속하려면 어떤 주소로 접속해야 하는지 설정하는 어노테이션
public class HelloServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		//HttpServletRequest : 클라이언트(사용자)로부터 전송된 모든 요청 정보가 담겨있는 객체
		//HttpServletResponse : 받은 요청을 통해 알맞은 응답(페이지)을 생성하는 응답 객체
		
		System.out.println(request.getRemoteAddr());
		System.out.println(request.getRemotePort());
		
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		
		//서블릿은 자바를 다루기 편하고 html을 다룰 때 불편함
		out.print("<!DOCTYPE html>");
		out.print("<html>");
		out.print("<head> <meta charset = 'UTF-8'>");//한글 안 깨지게 meta charset 써줌
		
		out.print("<title>This is title</title>");
		out.print("<style>div { background-color: red; color:white; width: 100px; height: 100px; margin: 5px; }</style>");
		
		out.print("</head>");
		out.print("<body>");
		
		for(int i=0; i<5;++i) {
			out.print("<div>디브 text" + i + "</div>");
		}
		
		out.print("</body>");
		out.print("</html>");
	}
}
