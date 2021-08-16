<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>헤어 예약 페이지</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW"
	crossorigin="anonymous"></script>
</head>
<body>

	<!-- jsp -->
	<!-- <form action="./hairSubmit.jsp" method="POST"></form> 
<form action="/chap01/jsp/1_form/hairSubmit.jsp" method="POST"></form> -->

	<!-- servlet -->
	<form action="/chap01/hair_submit" method="GET">
		<div class="container-lg">
			<h3>HairShop Order</h3>

			<div class="input-group mb-3">
				<span class="input-group-text" id="basic-addon1">고객명</span> <input
					type="text" class="form-control" placeholder="Username"
					aria-label="Username" aria-describedby="basic-addon1"
					name="customer_name">
			</div>

			<div class="form-check">
				<input class="form-check-input" type="radio" name="menu"
					id="hair_cut" value="헤어 컷"> <label class="form-check-label"
					for="hair_cut"> 헤어 컷 </label>
			</div>
			<div class="form-check">
				<input class="form-check-input" type="radio" name="menu"
					id="hair_perm" value="헤어 펌"> <label
					class="form-check-label" for="hair_perm"> 헤어 펌 </label>
			</div>
			<div class="form-check">
				<input class="form-check-input" type="radio" name="menu"
					id="hair_dye" value="헤어 염색"> <label
					class="form-check-label" for="hair_dye"> 헤어 염색 </label>
			</div>
			<div class="form-check">
				<input class="form-check-input" type="radio" name="menu"
					id="hair_styling" value="헤어 스타일링"> <label
					class="form-check-label" for="hair_styling"> 헤어 스타일링 </label>
			</div>

			<hr>
			<div class="form-check form-check-inline">
				<input class="form-check-input" type="radio" name="length" id="0"
					value="0" disabled> <label class="form-check-label" for="0">기본
					(+0)</label>
			</div>
			<div class="form-check form-check-inline">
				<input class="form-check-input" type="radio" name="length"
					id="+20,000원" value="+20,000원"> <label
					class="form-check-label" for="+20,000원">어깨선 아래 (+20,000)</label>
			</div>
			<div class="form-check form-check-inline">
				<input class="form-check-input" type="radio" name="length"
					id="+30,000원" value="+30,000원"> <label
					class="form-check-label" for="+30,000원">가슴선 아래 (+30,000)</label>
			</div>

			<hr>
			<div class="form-check">
				<input class="form-check-input" type="checkbox" name="extra"
					value="없음" id="없음"> <label class="form-check-label"
					for="없음"> 없음 </label>
			</div>
			<div class="form-check">
				<input class="form-check-input" type="checkbox" name="extra"
					value="hair_clinic" id="hair_clinic"> <label
					class="form-check-label" for="hair_clinic"> 모발 클리닉 </label>
			</div>
			<div class="form-check">
				<input class="form-check-input" type="checkbox" name="extra"
					value="head_masage" id="head_masage"> <label
					class="form-check-label" for="head_masage"> 두피 마사지 </label>
			</div>
			<div class="form-check">
				<input class="form-check-input" type="checkbox" name="extra"
					value="head_spa" id="head_spa"> <label
					class="form-check-label" for="head_spa"> 헤드 스파 </label>
			</div>


			<hr>

			<div class="form-check form-check-inline">
				<input class="form-check-input" type="radio" name="time" id="11:00"
					value="오전 11시"> <label class="form-check-label" for="11:00">오전
					11시</label>
			</div>
			<div class="form-check form-check-inline">
				<input class="form-check-input" type="radio" name="time" id="12:00"
					value="오후 12시"> <label class="form-check-label" for="12:00">오후
					12시</label>
			</div>
			<div class="form-check form-check-inline">
				<input class="form-check-input" type="radio" name="time" id="13:00"
					value="오후 1시" disabled> <label class="form-check-label"
					for="inlineCheckbox3">오후 1시 (예약불가)</label>
			</div>
			<div class="form-check form-check-inline">
				<input class="form-check-input" type="radio" name="time" id="14:00"
					value="오후 2시"> <label class="form-check-label" for="14:00">오후
					2시</label>
			</div>
			<div class="form-check form-check-inline">
				<input class="form-check-input" type="radio" name="time" id="15:00"
					value="오후 3시"> <label class="form-check-label" for="13:00">오후
					3시</label>
			</div>
			<div class="form-check form-check-inline">
				<input class="form-check-input" type="radio" name="time" id="16:00"
					value="오후 4시"> <label class="form-check-label" for="16:00">오후
					4시</label>
			</div>
			<hr>

			<div class="input-group">
				<span class="input-group-text">원하시는 디자이너가 <br>있으신가요?
				</span>
				<textarea class="form-control" name="cs"></textarea>
			</div>

			<input type="submit" class="btn btn-primary mt-3" value="예약하기">
		</div>
	</form>

</body>
</html>
