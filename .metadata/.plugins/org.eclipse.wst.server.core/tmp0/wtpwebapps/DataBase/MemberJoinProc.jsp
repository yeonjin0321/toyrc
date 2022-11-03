<%@page import="model.MemberDAO"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<%
	request.setCharacterEncoding("UTF-8");
	//취미 부분은 별도로 읽어드려 다시 빈클래스에 저장해야함
	String[] hobby = request.getParameterValues("hobby");
	String texthobby = "";

	for (int i = 0; i < hobby.length; i++) {
		texthobby += hobby[i] + " ";
	}
%>
	<!-- /* useBean을 사용하여 한꺼번에 데이터를 받아옴 */ -->

	<jsp:useBean id="mbean" class="model.MemberBean">

		<jsp:setProperty name="mbean" property="*" />

	</jsp:useBean>

	<%
	mbean.setHobby(texthobby); // 기존 취미는 주소번지가 저장되기에 배열의 내용을 하나의 스트링으로 

	//데이터 베이스 클래스 객체 생성후 
	MemberDAO mdao = new MemberDAO();
	mdao.insertMember(mbean);
	
	//회원가입이 되었다면 회원 정보를 보여주는 페이지로 이동시킴
	response.sendRedirect("MemberList.jsp");
	%>

	오라클 완료

</body>
</html>