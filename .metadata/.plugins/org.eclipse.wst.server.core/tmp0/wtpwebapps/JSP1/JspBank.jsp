<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<%! //메소드 안에 메소드를 못만들기 떄문에. 선언시 <%!
public void inCrement(){
	
}

%>
<%!

int a =10; //멤버변수이다.
%>
<%
int a= 100; //지역번수이다. 인크리먼트에서 만들어진.
%>


</body>
</html>