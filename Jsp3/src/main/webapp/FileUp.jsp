<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<body>

<center>
<form action="fileUploadProc.jsp" method="post" enctype="multipart/form-data">
<table>

<tr height="40">
	<td width="150">이름</td>
	<td width="200"><input type="text" name="name"></td>
</tr>
<tr height="40">
	<td width="150">파일 선택</td>
	<td width="200"><input type="file" name="filedata"></td>
</tr>
<tr height="40">
	<td align="ceneter" colspan="2">
	<input type="submit" value="파일업로드">
	</td>
</table>
</form>
</center>

</body>
</html>