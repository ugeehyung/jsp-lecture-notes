<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>Sign up Page</h1>

<form id="form_get" action="/Web_Flow/servlet" method="get">	
	
	<button id="registration_btn" name="regi" value="regi" form="form_get">회원등록</button>
	<input type="text" name="login" value="login">
	<button id="login_btn" name="login_btn" value="login_btn" form="form_get">로그인</button>
	
</form>

</body>
</html>