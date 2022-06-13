<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board2/write</title>
<style>
	table tr { height:35px; }
</style>
</head>
<body>
	<form method="post" action="write_ok.jsp">
	<table width="400" border="0" align="center">
		<caption><h2>게시판 글쓰기</h2></caption>
		<tr>
			<td> 제 목 </td>
			<td> <input type="text" name="title" size="40"> </td>
		</tr>
		<tr>
			<td> 이 름 </td>
			<td> <input type="text" name="writer" size="10"> </td>
		</tr>
		<tr>
			<td> 내 용 </td>
			<td> <textarea rows="8" cols="42" name="content"></textarea> </td>
		</tr>
		<tr>
			<td> 지 역 </td>
			<td>
				<input type="radio" name="area" value="0" checked>서울
				<input type="radio" name="area" value="1">경기
				<input type="radio" name="area" value="2">강원
				<input type="radio" name="area" value="3">충청
				<input type="radio" name="area" value="4">전라
			</td>
		</tr>
		
		<tr>
			<td colspan="2">
				<input type="checkbox" name="secret" value="1">
				체크하시면 해당글은 비밀글이 됩니다.
			</td>
		</tr>
		<tr>
			<td> 비밀번호 </td>
			<td> <input type="password" name="pwd" size=""> </td>
		</tr>
		<tr>
			<td colspan="2" align="center"> 
				<input type="submit" value="글쓰기">
				<a href="list.jsp"><input type="button" value="뒤로가기"></a>
			</td>
		</tr>
	</table>
	</form>
</body>
</html>