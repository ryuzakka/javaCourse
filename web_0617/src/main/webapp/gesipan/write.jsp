<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>gesipan/write</title>
</head>
<body>	<!-- gesipan/write -->

	<form method="post" action="write_ok.jsp">
		<table width="500" align="center">
			<caption><h2>게시판 글쓰기</h2></caption>
			<tr>
				<td> 제 목 </td>
				<td> <input type="text" name="title" size="30" > </td>
			</tr>
			<tr>
				<td> 작성자 </td>
				<td> <input type="text" name="writer" size="10" required> </td>
			</tr>
			<tr>
				<td> 이메일 </td>
				<td> <input type="text" name="email" size="30" required> </td>
			</tr>
			<tr>
				<td> 내 용 </td>
				<td> <textarea cols="50" rows="8" name="content"></textarea> </td>
			</tr>
			<tr>
				<td> 비밀번호 </td>
				<td> <input type="password" name="pwd" > </td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="저장" >
					<a href="list.jsp"><input type="button" value="목록" ></a>
				</td>
			</tr>
		</table>
	</form>
	
</body>
</html>