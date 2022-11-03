<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<body>



<%
	//사용자의 컴퓨터의 쿠키 저장소로부터 쿠키값을 읽어들임 몇개인지 모르기에 배열을 이용하여 쿠키값을 저장.
	Cookie cookies[] = request.getCookies(); //배열안에 저장.
	String id = "";
	//쿠키의 값이 없을수도 있음. 널처리를 해준다.
	if(cookies != null){
		
		for(int i=0 ; i<cookies.length; i++){
			if(cookies[i].getName().equals("id")){
				id = cookies[i].getValue();
				break;
			}
		}
		
	}


%>

<center>

<h2>쿠키 로그인</h2>
<form action="CookieLoginProc.jsp" method="post">
<table width="400" border="1">


	<tr height="50">
		<td width="150">아이디</td>
		<td width="200"><input type="text" name="id"></td>
	</tr>
	
	<tr height="50">
		<td width="150">패스워드</td>
		<td width="200"><input type="password" name="pass"></td>
	</tr>
	
	<tr height="50">
		<td colspan="2" align="center"><input type="checkbox" name="save" value="2">아이디저장</td>
	</tr>
	<tr height="50">
		<td colspan="2" align="center"><input type="submit" value="로그인"></td>
	</tr>
		
		

</table>


</form>
</center>


</body>
</html>