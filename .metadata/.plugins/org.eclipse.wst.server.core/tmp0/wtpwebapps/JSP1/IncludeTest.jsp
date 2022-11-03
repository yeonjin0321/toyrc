<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<center>
	<table width="600" border="1">
	
	<!-- 탑 부분 -->
		<tr height="150">
			<td width="600" align="center">
			<%@ include file="Top.jsp"%>
		</td>
	</tr>


<!--센터부분  -->

<tr height="400" align="center">
	<td width="600" align="center">
		<img alt="" src="image/img.png" width="400" height="300">
</tr>

<!--바텀부분  -->

<tr height="100" >
	<td width="600" align="center">
			<%@ include file="Bottom.jsp"%>
			</td>
</tr>


</table>
</center>

</body>
</html>