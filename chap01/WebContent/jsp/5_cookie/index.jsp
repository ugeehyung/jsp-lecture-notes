<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Http Cookie</title>
</head>
<body>

<h3># 쿠키</h3>
<ul>
	<li>클라이언트의 웹 브라우저에 name = value 형태로 저장되는 데이터</li>
	<li>클라이언트가 서버로 요청을 보낼 때마다 요청에 자신의 브라우저에 저장되어있는 쿠키를 포함시킨다</li>
	<li>서버에서는 쿠키를 통해 다양한 로직을 생성할 수 있다</li>
	<li>쿠키는 언제나 위조/변조될 수 있으므로 주의해야 한다</li>
</ul>

<a href="./createCookie.jsp">쿠키 생성하러 가기</a> <br />
<a href="./childfolder/createCookie.jsp">자식 폴더에서 쿠키 생성하러 가기</a> <br />
<a href="./cookiePage.jsp">쿠키가 적용된 페이지 보기</a> <br />

<hr>

<h3># 현재 쿠키 목록</h3>

<%
	Cookie[] cookies = request.getCookies();	
	for (Cookie cookie : cookies) {
		out.print(String.format("<b>%s</b>=%s<br>", cookie.getName(), cookie.getValue()));
	}
%>

<h3># EL로 쿠키 확인하기</h3>

<h4>getName(), getValue() :</h4>
${cookie.JSESSIONID.getName() }=${cookie.JESSIONID.getValue() } <br>

<h4>.name, .value :</h4>
${cookie.JSESSIONID.name }=${cookie.JESSIONID.value } <br>

</body>
</html>