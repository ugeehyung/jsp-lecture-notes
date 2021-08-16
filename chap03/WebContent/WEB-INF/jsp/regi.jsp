<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>Registration Page</h1>

<form id="form_get" action="/Web_Flow/servlet" method="get">	
	
	<button id="signup_btn" name="signup" value="signup" form="form_get">회원로그인</button>
	<input type="text" name="registration" value="registration">
	<button id="signup_btn" name="signup_btn" value="signup_btn" form="form_get">등록</button>
	
</form>

</body>
</html>