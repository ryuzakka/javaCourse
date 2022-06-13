<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board2/write</title>
</head>
<body>
	<form method="post" action="write_ok.jsp">
		<table width="600" border="0" align="center">
			<caption><h2>게시판 글쓰기</h2></caption>
			<tr>
				<td> 제 목* </td>
				<td> <input type="text" name="title" placeholder="제목을 입력하세요." size="60" required> </td>
			</tr>
			<tr>
				<td> 작성자* </td>
				<td> <input type="text" name="writer" placeholder="작성자 이름" required> </td>
			</tr>
			<tr>
				<td> 내 용* </td>
				<td> <textarea rows="8" cols="62" name="content" placeholder="내용을 입력하세요."></textarea> </td>
			</tr>
			<tr>
				<td> 지 역* </td>
				<td>
					<input type="radio" name="area" value="0" checked>서울 
					<input type="radio" name="area" value="1">경기
					<input type="radio" name="area" value="2">인천 
					<input type="radio" name="area" value="3">강원 
					<input type="radio" name="area" value="4">충청 
					<input type="radio" name="area" value="5">전라 
					<input type="radio" name="area" value="6">경상 
					<input type="radio" name="area" value="7">제주
				</td>
			</tr>
			<tr>
				<td> 비밀글 </td>
				<td> <input type="checkbox" name="secret"> 체크하면 비밀글로 설정됩니다. </td>
			</tr>
			<tr>
				<td> 비밀번호* </td>
				<td>
					<input type="password" name="pwd" placeholder="비밀번호를 입력하세요." required>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="저장">
					<a href="list.jsp"><input type="button" value="취소"></a>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>