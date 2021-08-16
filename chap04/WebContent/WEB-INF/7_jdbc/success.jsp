<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
session.setMaxInactiveInterval(10); //10sec
response.sendRedirect("chap01/login");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 성공 페이지</title>
</head>
<body>
<h3>로그인 성공</h3>
</body>
</html>