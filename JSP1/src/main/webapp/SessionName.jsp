<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h2> 세션 네임 페이지 입니다.</h2>
<%
	//캐스팅 변환 해줘야함
	String name1 = (String) session.getAttribute("name1");

%>

<%= name1 %> 님 반갑습니다.

</body>
</html>