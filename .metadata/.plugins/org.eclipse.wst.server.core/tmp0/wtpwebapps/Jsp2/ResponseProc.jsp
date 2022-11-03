
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<body>

<h2>
이 페이지는 로그인 정보가 넘어오는 페이지입니다.
</h2>
<%
request.setCharacterEncoding("UTF-8"); //한글처리 post 방식

String id = (String) request.getParameter("id");
//리퀘스트 객체에 담겨진 사용자의 id의 값을 파라미터로 넘겨받아서 저장함.

//response.sendRedirect("ResponseRedirect.jsp?=id"+id); //흐름제어
//위와 같이 넘겨도 상관없긴 함.
%>

<!--포워드로 넘겨줌  Proc 페이지주소 바뀌지 않고 responseRedirect로 데이터만 넘겨서 보여줌 -->
<jsp:forward page="ResponseRedirect.jsp"> 
<jsp:param value="mmmm" name="id"/>
<jsp:param value="1234" name="phone"/>
</jsp:forward>





<h2>아이디= <%=id %></h2>
</body>
</html>