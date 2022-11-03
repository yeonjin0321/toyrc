<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

<h2>회원 정보 보기</h2>

<%
//POST 방식으로 데이터가 넘어올때 한글이 깨질수 있기 때문에 설정해준다.
request.setCharacterEncoding("UTF-8");

String id = request.getParameter("id");
String pass1 = request.getParameter("pass1");
String pass2 = request.getParameter("pass2");
String email = request.getParameter("email");
String tel = request.getParameter("tel");

// []타입으로 리턴 받아준다 체크박스

String[] hobby = request.getParameterValues("hobby");

String job = request.getParameter("job");
String age = request.getParameter("age");
String info = request.getParameter("info");

if(!pass1.equals(pass2)){

%>

<script type="text/javascript">

alert("비밀번호가 일치하지 않습니다.");
history.go(-1);
</script>

<% 
		}
%>


<table width="500" border="1">

					<tr height="50">
					<td width="150" align="center">아이디</td>
					<td width="350" align="center"> <%= id %>
					</td>
					<tr height="50">
					<td width="150" align="center">이메일</td>
					<td width="350" align="center"> <%= email %>
					</td>
					<tr height="50">
					<td width="150" align="center">전화번호</td>
					<td width="350" align="center"> <%= tel %>
					</td>
					<tr height="50">
					<td width="150" align="center">관심분야</td>
					<td width="350" align="center">
					 <%
					 
					 for(int i=0; i< hobby.length; i++){
						 out.write(hobby[i]+ " ");
						 
					 }
					 
					 %>
					 
					</td>
						<tr height="50">
					<td width="150" align="center">직업</td>
					<td width="350" align="center"> <%= job %>
					</td>
							<tr height="50">
					<td width="150" align="center">연령</td>
					<td width="350" align="center"> <%= age %>
					</td>
							<tr height="50">
					<td width="150" align="center">하고싶은말</td>
					<td width="350" align="center"> <%= info %>
					</td>
					</tr>

</table>

</head>
<body>

</body>
</html>