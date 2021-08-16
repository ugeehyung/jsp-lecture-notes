<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	application.setAttribute("top", "<span style=\"color: blue;\">강아지</span>");
	session.setAttribute("top", "<span style=\"color: red;\">고양이</span>");
	request.setAttribute("top", "<span style=\"color: purple;\">오리</span>");
	
	// pageContext : JSP페이지에서만 사용할 수 있는 영역. 이 페이지를 벗어나면 수명이 다한다. (forward, include도 불가능)
	pageContext.setAttribute("top", "병아리");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL(Expression Language)</title>
</head>
<body>

<h3># JSP EL (Expression Language)</h3>
<ul>
	<li>Attribute에 저장된 값을 변수처럼 손쉽게 사용할 수 있는 문법이다.</li>
	<li>모든 scope의 데이터를 꺼낼 수 있다. (application, session, request, page)</li>
	<li>만약 모든 scope에 같은 name을 지닌 attribute가 있다면 가장 좁은 범위의 것을 먼저 사용한다.</li>
</ul>

<h3># EL로 Attribute의 값 꺼내보기</h3>
<dl>
	<dt>그냥 사용: ${top }</dt>
	<dd>- 가장 가까운 범위의 값을 사용한다.</dd>
	<dt>pageScope: ${pageScope.top }</dt>
	<dd>- page영역의 값을 사용한다.</dd>
	<dt>requestScope: ${requestScope.top }</dt>
	<dd>- request영역의 값을 사용한다.</dd>
	<dt>sessionScope: ${sessionScope.top }</dt>
	<dd>- session영역의 값을 사용한다.</dd>
	<dt>applicationScope: ${applicationScope.top }</dt>
	<dd>- application영역의 값을 사용한다.</dd>
</dl>

<h3># EL의 리터럴</h3>
<ul>
	<li>boolean: ${true }, ${false }</li>
	<li>int: ${123 }</li>
	<li>실수: ${123.123 }</li>
	<li>문자열: ${"string" }, ${'spring' }</li>
</ul>

<h3># EL의 연산자</h3>
<table border="1">
	<tr>
		<th>Name</th>
		<th>Operator</th>
		<th>Example</th>
	</tr>
	<tr>
		<td>산술</td>
		<td>+, -, *, /, %, mod</td>
		<td>${"${10 mod 7 }" } = ${10 mod 7 }</td>
	</tr>
	<tr>
		<td>비교</td>
		<td>==, !=, &lt;, &gt;, &le;, &ge;, eq, ne, lt, gt, le, ge</td>
		<td>
			${"${10 eq 10 }" } = ${10 eq 10 } <br>
			${"${top eq '병아리' }" } = ${top eq '병아리' }
		</td>
	</tr>
	<tr>
		<td>논리</td>
		<td>and, or, not, &&, ||, !</td>
		<td>
			${"${true and true}" } = ${true and true } <br>
			${"${true or false}" } = ${true or false } <br>			
		</td>
	</tr>
	<tr>
		<td>유효성 체크</td>
		<td>empty</td>
		<td>
			<%
				// EL의 empty연산은 ""와 null을 모두 걸러낼 수 있다. 
				pageContext.setAttribute("var1", "");
				pageContext.setAttribute("var2", null);
				pageContext.setAttribute("var3", " ");
			%>
			${'${empty var1 }' } = ${empty var1 } <br>
			${'${empty var2 }' } = ${empty var2 } <br>
			${'${empty var3 }' } = ${empty var3 }
		</td>
	</tr>
</table>

</body>
</html>