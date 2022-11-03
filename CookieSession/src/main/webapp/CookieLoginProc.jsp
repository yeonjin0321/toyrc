<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>

	<%
	//out.write("아이디 저장: "+ request.getParameter("save"));

	//아이디 저장 체크 여부를 판단

	String save = request.getParameter("save");
	//아이디값을 저장
	String id = request.getParameter("id");

	//체크되었는지 비교
	if (save != null) {//아이디 저장이 눌렸다면


	//쿠키를 사용하려면. 쿠키 클래스를 생성해 주어야한다
	Cookie cookie = new Cookie("id", id); //1번은 key값 2번째값은 value값(a,1234) a호출하면 1234가 자동으로 따라옴
	
	cookie.setMaxAge(60*1);//10분간 유효
	
	//사용자에게 쿠키 값을 넘겨줌.
	response.addCookie(cookie);
	
	out.write("쿠키생성완료"); //클라 서버에 쿠키가 생성된것임.이 단어가 뜨면
	
	}
	

	
	
	%>


</body>
</html>