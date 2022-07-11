<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="login.BoardDao" %>
<%
	BoardDao dao = new BoardDao();
	dao.checkSession(session, response);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login/write</title>
</head>
<body>
	
	<form method="post" action="write_ok.jsp">
		<table width="500" border="1" align="center">
			<caption><h2>게시판 글쓰기</h2></caption>
			<tr>
				<td> <strong>제목</strong> </td>
				<td> <input type="text" name="title" size="40" required> </td>
			</tr>
			<tr height="200">
				<td> <strong>내용</strong> </td>
				<td width="400">
					<textarea cols="42" rows="10" name="content"></textarea>
				</td>
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
<% dao.close(); %>