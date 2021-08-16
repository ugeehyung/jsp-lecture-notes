<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//쿠키는 사용자의 웹브라우저에 저장된다. 서버에서는 response에 쿠키를 실어보내면 된다
String[] messages = {"초코쿠키", "화이트 초코쿠키", "민트 초코쿠키"};
response.addCookie(new Cookie("choco", "초코쿠키"));
response.sendRedirect("./index.jsp");
%>    
