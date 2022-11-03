<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>

<%
//로그아웃 클릭시 파라미터를 통해서 로그아웃여부 확인
String logout = request.getParameter("logout");
if(logout!=null){
	
	session.setAttribute("id", null);
	session.setMaxInactiveInterval(0);

}

//세션을 통하여 아이디를 읽어옴
String id = (String )session.getAttribute("id");
//로그인이 되어 있지 않다면. 세션에도 null값 처리를 해주어야한다.

if(id == null){
	
	id = "손님";
}


%>



<!-- TOP -->
	<table width="800">
		<tr height="100">
		<!-- 로고 이미지 -->
			<td colspan="2" align="center" width="220">
				<img alt="" src="img/logo.png" width="200" height="70">
			</td>
			<td colspan="5" align="center">
			<font size="10">낭만 캠핑</font>
			
			</td>
		</tr>
		
		<tr height="50">
		<td width="100" align="center"> 텐트 </td>
		<td width="100" align="center"> 의자 </td>
		<td width="100" align="center"> 식기류 </td>
		<td width="100" align="center"> 침낭 </td>
		<td width="100" align="center"> 테이블 </td>
		<td width="100" align="center"> 화롯대 </td>
		<td width="100" align="center">
		
		<%
		if(id.equals("손님")){
		
		%>
	 <%= id %> 님<button onclick="location.href='SessionMain.jsp?center=SessionLoginForm.jsp'">로그인</button>
	 <% } else { %>
		
		 <%= id %> 님	<button onclick="location.href='SessionMain.jsp?logout=1'">로그아웃</button>
	
	<%}	%>
	</td>
	</tr>

<!-- TOP 끝 -->


	</table>

</body>
</html>