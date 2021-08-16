<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>
</head>
<body>

	<h3>로그인</h3>
	<p>아이디와 비밀번호를 입력해주세요</p>
		<!-- ID:jihyung PW:1234 -->
	<hr />

	<div>
		<c:choose>

			<c:when test="${empty loginID }">
				<form id="loginform" action="./dispatcher" method="post"></form>
				<input type="text" name="id" placeholder="Enter ID" />
				<input type="password" name="pw" placeholder="Enter Password" />
				<button form="loginform">로그인</button>
			</c:when>

		</c:choose>
	</div>

</body>
</html>