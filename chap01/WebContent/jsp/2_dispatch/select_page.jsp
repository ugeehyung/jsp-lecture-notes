<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>페이지 선택</title>
</head>
<body>

	<h3>가고 싶은 페이지를 선택해보세요</h3>

	<form id="form_get" action="./controller.jsp" method="GET"></form>
	<form id="form_post" action="./controller.jsp" method="POST"></form>
	
	<form id="form_get2" action="/chap01/controltest" method="GET"></form>
	<form id="form_post2" action="/chap01/controltest" method="POST"></form>

<!-- 	<input type="text" name="first_name" placeholder="이름(first name)" />
	<br>
	<input type="text" name="last_name" placeholder="성(last name)" />
	<br>
	<input type="text" name="nick_name" placeholder="별명(nickname)" />
	<br> -->
	<select name="page" form="form_get" id="page_selector1">
		<option value="1" selected>page1</option>
		<option value="2">page2</option>
		<option value="3">page3</option>
	</select>
	
	<select name="page" form="form_get2" id="page_selector2">
		<option value="1" selected>page1</option>
		<option value="2">page2</option>
		<option value="3">page3</option>
	</select>
	
	<select name="page" form="form_post2" id="page_selector">
		<option value="1" selected>page1</option>
		<option value="2">page2</option>
		<option value="3">page3</option>
	</select> 

	<hr>
	<!-- <input type= "submit" form="form_get" value = "전송"> -->
	<button id="form_submit_btn">전송</button>

	<%
		int a = 10;
	%>
	
<script>
	const btn = document.getElementById('form_submit_btn');
	const select = document.getElementById('page_selector');
	btn.addEventListener('click', () => {
		document.getElementById(select.getAttribute('form')).submit();
	});
</script>

</body>
</html>



