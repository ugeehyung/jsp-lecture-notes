<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	session.removeAttribute("login");
	//session.invalidate(); //: 세션 만료시키기
	
	response.sendRedirect("./index.jsp");
%>