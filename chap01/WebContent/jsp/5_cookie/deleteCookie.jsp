<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!

	private void deleteCookie(HttpServletRequest request, HttpServletResponse response, String to_delete, String path) {
		
	for (Cookie cookie: request.getCookies()) {
		
		if (cookie.getName().equals("ac")) {
			cookie.setMaxAge(0);
			cookie.setPath("/chap01");
			response.addCookie(cookie);
			break;
		}
	}
}

%>
<%
	//	# 쿠키 삭제하는 법
	
	//	쿠키를 모두 꺼낸 후 삭제하려는 쿠키의 수명을 0으로 바꾼 뒤 응답한다
	// 	삭제 시, path까지 일치시켜야 삭제된다
	deleteCookie(request, response, "ac", "/chap01");
	deleteCookie(request, response, "nmt", "/chap01");

	response.sendRedirect("./index.jsp");

%>