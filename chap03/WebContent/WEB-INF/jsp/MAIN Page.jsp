<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>Main Page</h1>

<form id="form_get" action="/Web_Flow/servlet" method="get">	
	
	<button id="NEWS_btn" name="NEWS" value="NEWS" form="form_get">NEWS</button>
	<button id="signup_btn" name="signup" value="signup" form="form_get">회원로그인</button>
	<button id="registration_btn" name="regi" value="regi" form="form_get">회원등록</button>
	
</form>

<script >
/* 	const btn = document.getElementById("form_submit_btn");
	const button = document.getElementById("page_selector");
	btn.addEventListener('click',() => {
		
		document.getElementById(button.getAttribute('id')).submit(); // form 속성의 값을 꺼낸다
		
	}); */
</script>

</body>
</html>