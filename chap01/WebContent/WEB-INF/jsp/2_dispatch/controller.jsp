<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%

/*
	String page_str = request.getParameter("page123");
	int page_int = 0;
	if (page_str != null) {
	page_int = Integer.parseInt(page_str);
	}
*/
	int page_num;
	try {
		page_num = Integer.parseInt(request.getParameter("page"));
		// ※ request.getParameter()는 뭔가 잘못된 경우, null이 변환된다
	} catch (Exception e) {
		page_num = 0;
	}
	System.out.println("first name: " + (request.getParameter("first_name")));
	System.out.println("last name: " + (request.getParameter("last_name")));
	System.out.println("nickname: " + (request.getParameter("nick_name")));
	
	System.out.println("page number: " + page_num);
	
	// # Controller: 사용자의 요청이 도착하면 어떤 일을 할지 결정
	
	// # View: 사용자에게 보여지는 부분 (예쁜 화면을 보여주기 위한 모든 소스들)
	
	// (controller와 view는 다른 파일로 분할하는 것이 유지보수 하기에 좋다)
	
	// # RequestDispatcher: 다른 페이지의 실행결과를 응답하거나 포함시키는 기능을 가진 클래스
	// 가고싶은 주소의 dispatcher instance 생성
	RequestDispatcher dispatcher = request.getRequestDispatcher("view/page" + page_num + ".jsp");
	
	// # forward() : controller에서 forward()를 하면, forwarding 된 페이지의 결과를 응답
	// controller에서 모든 처리가 끝난 후에 request를 데이터와 함께 다른 페이지로 그대로 전달한다
	// 클라이언트의 브라우저에는 주소값이 바뀌지 않는다
	dispatcher.forward(request, response);
	
	// # include() : 다른 페이지의 결과를 현재 페이지로 가져와서 포함시킨다
	//dispatcher.include(request, response);
	
	// # redirect : 클라이언트에게 다른 페이지로 다시 요청을 보낼 것을 명령한다
	//response.sendRedirect("./view/page" + page_num + ".jsp");
	
%>

<h3>controller.jsp</h3>

