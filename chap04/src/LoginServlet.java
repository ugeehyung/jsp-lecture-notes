

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

public class LoginServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String url = req.getRequestURL().toString();
		System.out.println("url: " + url);

		String target = url.substring(url.lastIndexOf("/") + 1);
		System.out.println("target: " + target);

		String inputID = null;
		String inputPW = null;
		String loginResult = null;
		
		if (target.equals("LoginServlet")) {
			inputID = req.getParameter("id");
			inputPW = req.getParameter("pw");
			System.out.println("ID: "+ inputID + " PW: " + inputPW);
		}

		try {

			Class.forName("oracle.jdbc.driver.OracleDriver");

			Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/XEPDB1", "hr", "1234");
			conn.setAutoCommit(false);
			PreparedStatement read_id = conn.prepareStatement("SELECT member_id FROM member_info");
			ResultSet rs_id = read_id.executeQuery();

			String id;

			while (rs_id.next()) {
				id = rs_id.getString(1);
				if (inputID.equals(id)) {
					System.out.println("ID 일치");
					loginResult = "id success!";
					break;
				} else {
					System.out.println("ID 불일치");
					loginResult = "id fail!";
				}
			}

			if (loginResult.equals("id fail!")) {
				req.getRequestDispatcher("/WEB-INF/jsp/7_jdbc/idfail.jsp").forward(req, resp);
			} else {
				
				PreparedStatement read_pw = conn.prepareStatement(
				"SELECT member_pw FROM member_info where memeber_id = '" + inputID + "'");
				ResultSet rs_pw = read_pw.executeQuery();

			String pw;
			HttpSession session = req.getSession(); 

				while (rs_pw.next()) {
					pw = rs_pw.getString(1);
					
					if (inputPW.equals(pw)) {
						System.out.println("PW 일치");
						loginResult = "login success!";
						session.setAttribute("login", inputID); //(name, value)
						req.getRequestDispatcher("/WEB-INF/jsp/7_jdbc/success.jsp").forward(req, resp);
						break;
						
					} else {
						System.out.println("PW 불일치");
						session.setAttribute("loginPW", "");
						loginResult = "pw fail!";
						req.getRequestDispatcher("/WEB-INF/jsp/7_jdbc/pwfail.jsp").forward(req, resp);
					}
				}

				if (rs_pw != null) rs_pw.close();
				if (read_pw != null) read_pw.close();
			}

			if (rs_id != null) rs_id.close();
			if (read_id != null) read_id.close();

		} catch (SQLException e1) {
			e1.printStackTrace();
		} catch (ClassNotFoundException e1) {
			e1.printStackTrace();
		}
	}
}
