<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Arrays"%>
<%
   request.setCharacterEncoding("UTF-8");

   String customer_name = request.getParameter("customer_name");
   String menu = request.getParameter("menu");
   String length = request.getParameter("length");
   String[] extras = request.getParameterValues("extra");
   String time = request.getParameter("time");
   String cs = request.getParameter("cs");
%>   

<!DOCTYPE html>
<%out.print("<html>"); %><html>
<head>
<meta charset="UTF-8">
<title>헤어 예약 내역</title>
</head>
<body>

   <h3>[ '<%=customer_name %>'님의 주문내용 ]</h3>
   <strong>고객명:</strong> <%=customer_name %> <br>
   <strong>헤어 시술:</strong> <%=menu %> <br>
   <strong>추가 기장:</strong> <%=length %> <br>
   <strong>추가 옵션:</strong> <%= Arrays.toString(extras) %> <br>
   <strong>예약 시간:</strong> <%=time %> <br>
   <strong>디자이너:</strong> <%=cs %> <br>

</body>
</html>