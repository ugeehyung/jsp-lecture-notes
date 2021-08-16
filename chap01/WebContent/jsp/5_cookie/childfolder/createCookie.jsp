<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
Cookie handmade = new Cookie("candy", "ice_cream");
Cookie noMoreToday = new Cookie("nmt", "1");
Cookie autoComplete = new Cookie("ac", "1");

//path를 통해 쿠키가 보이는 범위를 설정할 수 있다
handmade.setPath("/chap01/jsp/5_cookie/childfolder");
noMoreToday.setPath("/chap01");
autoComplete.setPath("/chap01");

//setMaxAge를 이용해 쿠키의 만료 시기를 설정할 수 있다 (기본값 = -1)
noMoreToday.setMaxAge(60 * 60 * 24);
autoComplete.setMaxAge(-1); //-1은 브라우저를 끄면 쿠키가 함께 삭제된다

//쿠키는 사용자의 웹브라우저에 저장된다. 서버에서는 response에 쿠키를 실어보내면 된다
String[] messages = {"초코우유", "화이트 초코우유", "민트 초코우유"};
response.addCookie(new Cookie("choco_milk", messages[(int)(Math.random()*messages.length)]));
response.addCookie(handmade);
response.addCookie(noMoreToday);
response.addCookie(autoComplete);

response.sendRedirect("../index.jsp");
%>
