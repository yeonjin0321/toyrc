<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<body>


<%
//센터값을 변경해주기 위해서 리퀘스트 객체를 이용하여 center값을 받아온다.
String center = request.getParameter("center");

//처음 SessionMain.jsp를 사용하면 null값이 넘어올것임. 널처리를 해줘야한다.
if(center==null){
	center = "Center.jsp";
}


%>

<center>

<table border="1" width="800">
	<!-- top -->
<tr height="150">
	<td align="center" colspan="2"> 
	<jsp:include page="Top.jsp"></jsp:include>
	</td>
</tr>

<!-- LEFT -->
<tr height="400">
	<td align="center" width="200">
	<jsp:include page="Left.jsp"></jsp:include>
	</td>



<!-- CENTER -->

	<td align="center" width="600">
	<jsp:include page="<%= center %>"/>
	</td>
</tr>

<!-- bottom -->
<tr height="150">
	<td align="center" colspan="2">
	<jsp:include page="Bottom.jsp"></jsp:include>
	</td>
</tr>

</table>


</center>
</html>