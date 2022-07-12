<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board/write</title>
</head>
<body>
	
	<form method="post" action="write_ok.jsp">
	<table width="500" align="center" border="1">
		<tr>
			<td> 제 목 </td>
			<td> <input type="text" name="title" required> </td>
		</tr>
		<tr>
			<td> 작성자 </td>
			<td> <input type="text" name="name" required> </td>
		</tr>
		<tr>
			<td> 비밀번호 </td>
			<td> <input type="password" name="pwd" required> </td>
		</tr>
		<tr>
			<td> 내 용 </td>
			<td> <textarea cols="52" rows="5" name="content"></textarea> </td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<p> <input type="submit" value="저장"> </p>
				<input type="button" value="목록으로" onclick="javascript:location='list.jsp'">
			</td>
		</tr>
	</table>
	</form>
	
</body>
</html>