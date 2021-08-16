<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="chap01.datamodel.Student"%>
<%
	session.setAttribute("login", new Student("홍길동", 123));
	session.setMaxInactiveInterval(60 * 5); // : 5분 활동 안하면 자동 로그아웃
	
	response.sendRedirect("./index.jsp");
%>