<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Enumeration"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session(세션)</title>
</head>
<body>

<h3># 세션 영역</h3>
<ul>
	<li>클라이언트가 서버에 접속하면 서버는 클라이언트에게 세션ID(JSESSIONID)를 부여한다 (쿠키를 사용한다)</li>
	<li>전달받은 JSESSIONID는 매 요청 시 서버로 함께 전송된다</li>
	<li>서버는 전달받은 JSESSIONID를 통해 데이터를 꺼낸다 (세션 아이디가 Map타입의 Key처럼 활용된다)</li>
</ul>

<h3># 세션 객체가 가지고 있는 정보들</h3>
<ul>
	<li>클라이언트에게서 받은 JSESSIONID=<%=session.getId() %></li>
	<li>클라이언트에게 세션이 발급된 시간: <%=session.getCreationTime() %></li>
	<li>클라이언트의 최근 접속 시간: <%=session.getLastAccessedTime() %></li>
</ul>

<a href="./loginSuccess.jsp">로그인 성공시키기</a> <br />
<a href="./logout.jsp">로그아웃 성공시키기</a> <br />
<a href="./page.jsp">로그인 여부에 따라 달라지는 페이지</a>

<hr />

<h3># 세션에 실린 정보들</h3>
<%
	Enumeration<String> sessionAttrNames = session.getAttributeNames();
	out.print("<ul>");
	while(sessionAttrNames.hasMoreElements()) {
		String name = sessionAttrNames.nextElement();
		out.print("<li>" +name+ "=" +session.getAttribute(name)+ "</li>");
	}
	out.print("</ul>");
%>

</body>
</html>