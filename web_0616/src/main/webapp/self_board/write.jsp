<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>write form</title>
</head>
<body>
	<form method="post" action="write_ok.jsp">
		<table width="600" border="1" align="center">
			<tr>
				<td>제목</td>
				<td><input type="text" name="title"></td>
			</tr>
			<tr>
				<td>작성자</td>
				<td><input type="text" name="writer"></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea cols="60" rows="8" name="content"></textarea></td>
			</tr>
			<tr>
				<td>지역</td>
				<td>
					<input type="radio" name="area" value="0">서울
					<input type="radio" name="area" value="1">경기
					<input type="radio" name="area" value="2">인천
					<input type="radio" name="area" value="3">강원
					<input type="radio" name="area" value="4">충청
				</td>
			</tr>
			<tr>
				<td>비밀글</td>
				<td><input type="checkbox" name="secret">체크하면 비밀글이 됩니다.</td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit" value="저장"></td>
			</tr>
		</table>
	</form>
</body>
</html>