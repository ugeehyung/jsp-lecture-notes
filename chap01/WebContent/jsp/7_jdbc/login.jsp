<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>
</head>
<body>

<div id="login">
<form>
<div class="container">

<h3>로그인</h3>
<p>아이디와 비밀번호를 입력해주세요</p>
<hr />

<input type="text" class="text_input" placeholder="Enter ID"/>
<input type="password" class="text_input" placeholder="Enter Password" />
<button type="submit" class="loginBtn">로그인</button>


</div>
</form>
</div>


<script>
var login = document.getElementById('login');
function openLogin() {
	login.style.display='block';
}
function closeLogin() {
	login.style.display='none'
}

</script>


</body>
</html>