<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title><c:choose>
	<c:when test="${empty login }">로그인 해주세요</c:when>
	<c:otherwise>환영합니다! '${login.name}'님</c:otherwise>
</c:choose></title>

</head>
<body>

<c:choose>
	<c:when test="${empty login }">
		<input type="text" />
		<input type="text" />
	</c:when>
	<c:otherwise>
		${login.name } / ${login.kor }원 보유중
	</c:otherwise>
</c:choose>


</body>
</html>