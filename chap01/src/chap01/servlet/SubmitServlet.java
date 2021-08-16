package chap01.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/submit")
public class SubmitServlet extends HttpServlet {

	// Get방식의 요청은 서블릿의 doGet()에 도착하게 되고,
	// Post방식의 요청은 서블릿의 doPost()에 도착하게 된다
	
	//# GET 방식의 특징: (URL)길이 제한이 있고, 즐겨찾기 등록 시 데이터와 함께 저장된다
	//# POST 방식 특징: 길이 제한이 없고, 파일/긴 글 전송 등에 적합하다

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		// 클라이언트에서 form을 통해 실려온 데이터는 req객체의 parameter라는 곳에 포함되어 있다.
		// GET 방식의 요청은 톰캣에 설정된 charset을 이용한다 (URL을 처음 해석하는 것은 톰캣이기 때문)

		// 1. 파라미터를 Enumeration객체로 꺼내기 : 모든 이름을 반복 돌리기 편한 형태로 담아놓은 객체를 꺼낸다.
		Enumeration<String> names = req.getParameterNames();

		// Writer를 꺼내기 전에 인코딩 타입을 설정해 두어야 한다.
		resp.setCharacterEncoding("UTF-8");
		PrintWriter out = resp.getWriter();

		out.print("<html>");
		out.print("<head><meta charset='utf-8'></head><body>");
		while (names.hasMoreElements()) {
			String name = names.nextElement();
			String value = req.getParameter(name);

			out.print("<b>" + name + ":</b> " + value + "<br>");
		}
		out.print("</body></html>");
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		req.setCharacterEncoding("UTF-8");

		// 2. 그냥 꺼내기 : 여러 개 값을 꺼낼 때는 getParameterValues() 이용
		System.out.println("name: " + req.getParameter("customer_name"));
		System.out.println("topping: " + req.getParameter("topping"));
		System.out.println("Extras: ");
		for (String extra : req.getParameterValues("extra")) {
			System.out.println("\t" + extra);
		}
		System.out.println("요구사항: " + req.getParameter("cs"));

		// 3. 맵으로 꺼내기 : 기본적으로 value 쪽이 String[]로 설정되어있다
		Map<String, String[]> params = req.getParameterMap();
		System.out.println(params.get("customer_name"));

	}
}
