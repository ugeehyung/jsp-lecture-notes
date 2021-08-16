<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 값에 따른 페이지 구성</title>
</head>
<body>

<c:if test="${empty cookie.nmt.value}">
<script>
	restult = window.confirm('확인?');
</script>
</c:if>

<c:choose>
<c:when test = "${empty cookie.ac.value }">
	[자동완성X]<input type="text" name="name" autocomplete ="off"/>
</c:when>
<c:otherwise>
	[자동완성O]<input type="text" name="name" autocomplete = "on" />
</c:otherwise>
</c:choose>

</body>
</html>