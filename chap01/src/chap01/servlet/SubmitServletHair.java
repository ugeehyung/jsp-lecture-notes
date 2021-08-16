package chap01.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/hair_submit")
public class SubmitServletHair extends HttpServlet {

        @Override
        protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
                
                Enumeration<String> names = req.getParameterNames();

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
        	
        	System.out.println("고객이름: " + req.getParameter("customer_name"));
        	System.out.println("헤어시술: " + req.getParameter("menu"));
        	System.out.println("추가기장: " + req.getParameter("length"));
        	System.out.println("추가옵션: ");
        	for ( String extra : req.getParameterValues("extra")) {
        		System.out.println("\t" + extra);
        	}
        	System.out.println("예약시간: " + req.getParameter("time"));
        	System.out.println("디자이너: " + req.getParameter("cs"));
        	
        }
}



