<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL functions</title>
</head>
<body>

<h3># fn은 태그로 사용하는 것이 아니라 EL내부에 사용해야 한다</h3>

<h4># fn:contains</h4>
<p>
	<c:if test="${fn:contains('pineapple', 'apple') }">
		파인애플에 애플이 포함되어 있나요? ${fn:contains('pineapple', 'apple') }
	</c:if>
</p>

<h4># fn:startsWith, fn:endsWith</h4>
<p>
	애플워치가 애플로 시작하나요? ${fn:startsWith('애플워치', '애플') } <br>
	애플워치가 워치로 끝나나요? ${fn:endsWith('애플워치', '워치') }
</p>

<h4># fn:split</h4>

<c:forEach var="color" items="${fn:split('red/orange/yellow/green', '/') }" varStatus="forloop">
	<p>${forloop.count }번째 색깔: ${color }</p>
</c:forEach>

<h4># fn:join</h4>

<c:set var="items" value="${fn:split('sword/shield/spear/bow/mace', '/') }"/>
<p>
	${fn:join(items, '#') } <br>
	${fn:join(items, ', ') } <br>
</p>

<h5>이 외의 많은 String method들이 구현되어있다...</h5>

</body>
</html>