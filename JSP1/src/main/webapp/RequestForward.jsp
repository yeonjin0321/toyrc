<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!--리퀘스트 로그인에서 넘어온 id와 pw를 읽어야함  -->
	<!--jsp 응답객체. request, response 자바코드 스크립틀릿안에 써서 씀 -->

	<%
	//사용자의 정보가 저장되어 있는 객체 request 의 getParameter를 통해 정보 추출
	//박스이름.
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
	%>

	<h2>
	
	RequestForward 페이지 입니다.
		당신의 아이디는?
		<%=id%>
		이고 패스워드는
		<%=pass%>
		입니다.
	</h2>

</body>
</html>