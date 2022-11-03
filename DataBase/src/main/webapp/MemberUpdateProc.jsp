<%@page import="model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>



<jsp:useBean id="mbean" class="model.MemberBean">
	<jsp:setProperty name="mbean" property="*"/>
</jsp:useBean>


<%
	String id = request.getParameter("id");
	MemberDAO mdao = new MemberDAO();
	//스트링 타입으로 저장되어 있는 패스워드를 가져옴(데이터베이스에서 가져온 pass값이 저장된것임)
	String pass = mdao.getPass(mbean.getId());
	//수정하기위해서 작성한 패스워드값과 기존 데이터 베이스에서 가져온 패스워드값을 비교
	
	if(mbean.getPass1().equals(pass)){ //같다면 멤버테이블을 수정
		
		//멤버다오 클래스의 회원수정 메소드를 호출한다.
		mdao.updateMember(mbean); // 수정할 엠빈 그자체를 넘김
		response.sendRedirect("MemberList.jsp");
		
		
	}else{
%>

<script type="text/javascript">
alert("패스워드가 맞지 않습니다. 다시 확인해 주세요")
history.go(-1);
</script>
		
		
<%	
	}

%>


</body>
</html>