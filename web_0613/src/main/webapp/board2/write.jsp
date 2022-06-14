<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board2/write</title>
<style>
	input[type=text], input[type=password] {
		width:280px;
		height:30px;
	}
	#title {
		width:400px;
	}
	textarea {
		width:400px;
		height:100px;
	}
	td {
		padding-top:15px;
	}
	input[type=submit] {
		width:450px;
		height:40px;
		border:1px solid hotpink;
		color:hotpink;
		font-size:20px;
		background:white;
	}
	input[type=submit]:hover {
		width:450px;
		height:40px;
		border:1px solid hotpink;
		color:white;
		font-size:20px;
		background:hotpink;
	}
</style>
</head>
<body>
	<form method="post" action="write_ok.jsp">
	<table width="500" border="0" align="center">
		<caption><h2>게시판 글쓰기</h2></caption>
		<tr>
			<td> 제 목 </td>
			<td> <input type="text" name="title" id="title"> </td>
		</tr>
		<tr>
			<td> 이 름 </td>
			<td> <input type="text" name="writer"> </td>
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
			<td></td>
			<td>
				<input type="checkbox" name="secret" value="1">
				체크하시면 해당글은 비밀글이 됩니다.
			</td>
		</tr>
		<tr>
			<td> 비밀번호 </td>
			<td> <input type="password" name="pwd"> </td>
		</tr>
		<tr>
			<td colspan="2" align="center"> 
				<input type="submit" value="글쓰기"><p>
				<a href="list.jsp"><input type="button" value="뒤로가기"></a>
			</td>
		</tr>
	</table>
	</form>
</body>
</html>