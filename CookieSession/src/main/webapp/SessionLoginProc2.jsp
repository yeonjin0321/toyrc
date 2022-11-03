<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<body>

<h2>세션 로그인 처리 2</h2>

<%
	
//세션을 이용하여 데이터를 불러와야한다.

String id = (String) session.getAttribute("id");
String pass = (String) session.getAttribute("pass");

//세션을 통해 유지시켜주는것이 보안성을 보더라도 좋다.

%>


<h2>당신의 아이디는 <%=id %> 입니다.</h2>
<h2>당신의 비밀번호는 <%=pass %> 입니다.</h2>


</body>
</html>