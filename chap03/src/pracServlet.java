import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet")
public class pracServlet extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		super.service(req, resp);
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String btn ="";
		System.out.println();
		Enumeration<String> names = req.getParameterNames();
		while(names.hasMoreElements()) {
			String name = names.nextElement();
			String value = req.getParameter(name);
			
			try{
				if(value.equals("NEWS")) {
					btn =req.getParameter("NEWS");					
				} else if(value.equals("signup")) {
					btn =req.getParameter("signup");					
				} else if(value.equals("regi")){
					btn =req.getParameter("regi");					
				} else if(value.equals("IT")) {
					btn =req.getParameter("IT");
				} else if(value.equals("sports")) {
					btn =req.getParameter("sports");
				} else if(value.equals("interview")) {
					btn =req.getParameter("interview");
				} else if(value.equals("login_btn")) {
					if(req.getParameter("login").equals("dd")) {
						btn ="success";
					} else {
						btn ="fail";
					}
				} else if(value.equals("signup_btn")) {
					if(req.getParameter("registration").equals("dd")) {
						btn ="regisuccess";
					} else {
						btn ="regifail";
					}
				} else if(value.equals("guide")) {
					btn =req.getParameter("guide");
				}
				

			} catch(Exception e){
				btn = "";
			}
		}
		
		System.out.println(btn);
		RequestDispatcher dispatcher =  req.getRequestDispatcher("/WEB-INF/jsp/"+ btn +".jsp");
		dispatcher.forward(req, resp); // 다음 페이지로 데이터를 전달하기 위한 코드 
	}
	
}
