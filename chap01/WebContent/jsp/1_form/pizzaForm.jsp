<%@ page language="java" contentType="text/html; charset=UTF-8"
        pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>피자 주문 페이지</title>
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

<!-- method="GET"은 doGet으로, method="POST"는 doPost로 요청보내게된다 -->
<!-- <form action="/chap01/jsp/1_form/pizzaSubmit.jsp" method="POST"></form>
<form action="./pizzaSubmit.jsp" method="POST"></form> -->

<form action="/chap01/submit" method="POST">
<div class="container-lg">
       <h3>Pizza Order</h3>

	<div class="input-group mb-3">
		<span class="input-group-text" id="basic-addon1">@</span> 
		<input type="text" class="form-control" placeholder="Username" aria-label="Username" 
			aria-describedby="basic-addon1" name="customer_name">				
	</div>
	
	<div class="form-check">
		<input class="form-check-input" type="radio" name="topping" id="cheese_pizza" value="cheese_pizza">
		<label class="form-check-label" for="cheese_pizza"> 치즈 피자 </label>
	</div>
	<div class="form-check">
		<input class="form-check-input" type="radio" name="topping" id="pine_pizza" value="pine_pizza">
		<label class="form-check-label" for="pine_pizza"> 파인애플 피자 </label>
	</div>
	<div class="form-check">
		<input class="form-check-input" type="radio" name="topping" id="pepp_pizza" value="pepp_pizza">
		<label class="form-check-label" for="pepp_pizza"> 페퍼로니 피자 </label>
	</div>

	<hr>

	<div class="form-check">
		<input class="form-check-input" type="checkbox" name="extra" value="coke" id="coke">
		<label class="form-check-label" for="coke"> 콜라 추가 </label>			
	</div>
	<div class="form-check">
		<input class="form-check-input" type="checkbox" name="extra" value="pasta" id="pasta">
		<label class="form-check-label" for="pasta"> 파스타 추가 </label>			
	</div>
	<div class="form-check">
		<input class="form-check-input" type="checkbox" name="extra" value="pickle" id="pickle">
		<label class="form-check-label" for="pickle"> 피클 추가 </label>			
	</div>
	
	<hr>
	
	<div class="input-group">
		<span class="input-group-text">요청사항</span>
		<textarea class="form-control" name="cs"></textarea>
	</div>
	
	<input type="submit" class="btn btn-primary mt-3" value="주문 요청하기">
</div>
</form>

</body>
</html>
       



