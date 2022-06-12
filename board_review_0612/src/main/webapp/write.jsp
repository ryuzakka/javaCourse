<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board:write</title>
</head>
<body>
	<h2>글쓰기</h2>
	
	<table width="700">
		<form method="post" action="write_ok.jsp">
		<tr>
			<td>글 제목</td>
			<td>
				<input type="text" name="title" placeholder="글 제목" required>
			</td>
		</tr>
		<tr>
			<td>작성자</td>
			<td>
				<input type="text" name="writer" placeholder="작성자" required>
			</td>
		</tr>
		<tr>
			<td>글 비밀번호</td>
			<td>
				<input type="password" name="pwd" placeholder="비밀번호" required>
			</td>
		</tr>
		<tr height="250">
			<td>내용</td>
			<td>
				<textarea cols="40" rows="18" name="content"></textarea>
			</td>
		</tr>
		<tr>
			<td>
				<input type="submit" value="작성완료">
			</td>
			<td>
				<a href="list.jsp"><input type="button" value="뒤로가기"> </a>
			</td>
		</tr>
		</form>
	</table>
	
</body>
</html>