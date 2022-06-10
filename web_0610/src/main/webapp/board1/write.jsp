<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WRITE</title>
</head>
<body>
	<form method="post" action="write_ok.jsp">
		<table width="800" border="1">
			<tr>
				<td> <strong>제목</strong> </td>
				<td> <input type="text" name="title" size="40" required> </td>
			</tr>
			<tr>
				<td> <strong>작성자</strong> </td>
				<td> <input type="text" name="name" size="10" required> </td>
			</tr>
			<tr height="200">
				<td> <strong>내용</strong> </td>
				<td width="700">
					<textarea cols="82" rows="10" name="content"></textarea>
				</td>
			</tr>
			<tr>
				<td> <strong>비밀번호</strong> </td>
				<td> <input type="password" name="pwd" size="8" required> </td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="저장">
					<a href="list.jsp"><input type="button" value="뒤로가기"></a>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>