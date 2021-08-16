<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>NEWS Page</h1>

<form id="form_get" action="/Web_Flow/servlet" method="get">	
	
	<button id="signup_btn" name="signup" value="signup" form="form_get">회원로그인</button>
	<button id="IT_btn" name="IT" value="IT" form="form_get">IT</button>
	<button id="sports_btn" name="sports" value="sports" form="form_get">SPORTS</button>
	<button id="interview_btn" name="interview" value="interview" form="form_get">INTERVIEW</button>
	
</form>

</body>
</html>