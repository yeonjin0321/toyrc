<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>


<center>
<h2>회원 정보 보기</h2>
<%

//아래와 같이 하면 일일히 다~ 써줘야 하므로 가성비가 안좋다.
//String id = request.getParameter("id");


/* reqeust로 넘어온 데이터를 자바 빈즈로 맵핑 시켜주는 useBean */
%>

<jsp:useBean id="mbean" class="bean.MemberBean">
<!--객체생성과 같은것임 mbean으로 접근하면됨 -->
<!-- jsp내용을 자바빈 클래스(멤버빈)에 데이터를 매핑(데이터를 넣어줌) -->

<jsp:setProperty name="mbean" property="*"/><!--*자동으로 매핑 시켜주세요  -->
</jsp:useBean>

<h2>당신의 아이디는 <jsp:getProperty property="id" name="mbean"/> </h2>
<h2>당신의 패스는 <jsp:getProperty property="pass1" name="mbean"/> </h2>
<h2>당신의 이메일은 <jsp:getProperty property="email" name="mbean"/> </h2>
<h2>당신의 전화는
<%= mbean.getTel() %>
</h2>


</center>

</body>
</html>