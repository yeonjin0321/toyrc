<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<body>

<h2>
이곳은 ResponseRedirect 페이지입니다.
</h2>

<%
request.setCharacterEncoding("UTF-8");

String id = (String) request.getParameter("id");
String phone= request.getParameter("phone");


%>

<h2> 아이디= <%=id %> phone= <%=phone %></h2>

</body>
</html>