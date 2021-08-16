<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="chap01.datamodel.Student"%>

<!-- import custom tag library -->    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<% 
	request.setAttribute("login", false);
	// if (!(boolean)(request.getAttribute("login"))) {
	// 	response.sendRedirect(request.getContextPath() + "/attribute");
	// }
%>
<c:if test="${!login }">
	<c:redirect url="/attribute">
		<c:param name="fruits" value="banana"/>		
		<c:param name="fruits" value="orange"/>
	</c:redirect>
</c:if>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>JSTL (JSP Standard Tag Library)</title>
	<style>
		p {
			color: green;
			font-weight: bolder;
		}
		h5 {
			color: red;
		} 
	</style>
</head>
<body>

<h3># c:set</h3>
<p>
	- scope.setAttribute를 축약한 태그. 없으면 추가되고 있으면 원래 값을 덮어쓴다.
</p>
<c:set var="a" value="10"/> <!-- 영역을 지정하지 않으면 pageContext에 등록된다 -->
<c:set var="b" value="20" scope="page"/>
<c:set var="a" value="30" scope="request"/>
<c:set var="a" value="40" scope="session"/>
<c:set var="a" value="50" scope="application"/>

${a }, ${requestScope.a }, ${sessionScope.a }, ${applicationScope.a } <br>

<h3># c:if</h3>
<p>
	- if문을 깔끔하게 사용할 수 있다. if문에 else if와 else가 없다.
</p>
<c:if test="${a ne 30 }">
	<h5>가장 좁은 범위의 a attribute는 30이 아닙니다.</h5>
</c:if>

<h3># c:choose, c:when, c:otherwise</h3>
<p>
	- switch-case문을 사용할 수 있다.
</p>
<h5>
<c:choose>
	<c:when test="${applicationScope.a % 3 eq 0 }">
		서버에 저장된 a의 값은 3의 배수입니다.	
	</c:when>
	<c:when test="${applicationScope.a % 4 eq 0 }">
		서버에 저장된 a의 값은 3의 배수가 아니면서 4의 배수입니다.
	</c:when>
	<c:otherwise>
		서버에 저장된 값은 3의 배수도 아니고, 4의 배수도 아닙니다.
	</c:otherwise>
</c:choose>
</h5>

<h3># c:url</h3>
<p>
	편리하게 원하는 url을 생성할 수 있다. GET방식 요청도 쉽게 붙일 수 있다.<br>	
</p>

<a href="<%=application.getContextPath() %>/attribute">Attribute 테스트하러 가기</a> <br>
<a href="<c:url value='/attribute'/>">Attribute 테스트하러 가기 (c:url ver)</a> <br>

<%=application.getContextPath() %>/attribute?hobbies=<%=pageContext.getAttribute("a") %>&hobbies=<%=pageContext.getAttribute("a") %>&food=<%=pageContext.getAttribute("a") %> <br>

<!-- 별로 편한 것 같지 않음 -->
<a href="<c:url value='/attribute'>
	<c:param name="hobbies" value="${a }"/>
	<c:param name="hobbies" value="${a }"/>
	<c:param name="food" value="${a }"/>
</c:url>">Attribute 테스트하러 가기 (이거 맞나? ver.)</a> <br>

<!-- 생성한 url을 Attribute에 저장해 둘 수 있다 -->
<c:url var="my_url" scope="session" value="/attribute">
	<c:param name="hobbies" value="${a }"/>
	<c:param name="hobbies" value="${a }"/>
	<c:param name="food" value="${a }"/>
</c:url>
<a href="${sessionScope.my_url }">Attribute 테스트하러 가기 (my_url ver.)</a> <br>

<h3># c:forEach</h3>
<p>
	for문을 깔끔하게 사용할 수 있는 태그.
</p>
<%
	pageContext.setAttribute("students", new Student[] {
			new Student("홍길동", 100),
			new Student("언더테이커", 10),
			new Student("리오넬메시", 5),
			new Student("세종대왕", 100),
	});
	
	java.util.List<Student> student_list = new java.util.ArrayList<>();
	student_list.add(new Student("임종훈", 100));
	student_list.add(new Student("임종환", 100));
	student_list.add(new Student("현태환", 100));
	student_list.add(new Student("임원영", 100));
	student_list.add(new Student("이원석", 100));	
	
	pageContext.setAttribute("student_list", student_list);	
%>
<dl>
<!-- 1. c:forEach 향상된 for문 버전 - items속성 사용 -->
<c:forEach var="student" items="${students }" varStatus="forloop">
	<dt>
		<strong>
			# ${forloop.index }번째 반복입니다.
			  첫 번째 반복인가요? ${forloop.first }.
			  마지막 반복인가요? ${forloop.last }.
			  ${forloop.count }번째 반복입니다. (1base)
		</strong>
	</dt>
	<dd>- [${student.name } / ${student.kor }]</dd>
</c:forEach>
</dl>

<dl>
<c:forEach var="student" items="${student_list }" varStatus="forloop">
	<dt><strong># ${forloop.index }번째 반복입니다.</strong></dt>
	<dd>- [${student.name } / ${student.kor }]</dd>
</c:forEach>
</dl>

<!-- 2. c:forEach 기본 for문 버전 - begin속성과 end속성 사용 -->
<c:forEach var="i" begin="0" end="${student_list.size() - 1 }">
	<p>${student_list.get(i).name } / ${student_list.get(i).kor }</p>
</c:forEach>

<!-- c:forEach를 이용해 구구단 테이블을 출력해보세요 -->

<h3># c:forTokens</h3>
<p>
	split()을 적용한 뒤 하나씩 반복하는 반복문. 
</p>
<c:set var="colors" value="red/blue/purple/skyblue/dodgerblue/navy/peru/lime"/>
<c:forTokens var="color" items="${colors }" delims="/">
	<div style="border:solid ${color} 3px">${color } color div</div>
</c:forTokens>

</body>
</html>
