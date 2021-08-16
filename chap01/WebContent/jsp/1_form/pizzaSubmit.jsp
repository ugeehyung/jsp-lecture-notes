<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Arrays"%> <!-- response utf -->
<%
   request.setCharacterEncoding("UTF-8");
   // JSP에는 기본적으로 만들어져 있는 내장객체들이 존재한다.
   // 기본적으로 getparameter은 String이다.
   String customer_name = request.getParameter("customer_name");
   String topping = request.getParameter("topping");
   String[] extras = request.getParameterValues("extra");
   String cs = request.getParameter("cs");
%>    

<!DOCTYPE html>
<%out.print("<html>"); %>
<head>
<meta charset="UTF-8">
<title>주문 내역</title>
</head>
<body>
   <h3>'<%=customer_name %>'님의 주문내용</h3>
   <strong>고객명:</strong> <%=customer_name %> <br>
   <strong>고른피자:</strong> <%=topping %> <br>
   <strong>추가옵션:</strong> <%= Arrays.toString(extras) %> <br>
   <strong>요구사항:</strong> <%=cs %> <br>
</body>
</html>