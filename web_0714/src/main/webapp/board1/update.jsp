<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="board.BoardDao" %>
<%
	BoardDao dao = new BoardDao();
	dao.content(request);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>UPDATE (el)</title>
</head>

<body>
	<form method="post" action="update_ok.jsp">
		<table width="800" border="1">
			<input type="hidden" name="id" value="${dto.id}">
			<tr>
				<td> <strong>제목</strong> </td>
				<td> <input type="text" name="title" value="${dto.title}" required> </td>
			</tr>
			<tr>
				<td> <strong>작성자</strong> </td>
				<td><input type="text" name="name" value="${dto.name}" required> </td>
			</tr>
			<tr height="200">
				<td> <strong>내용</strong> </td>
				<td width="700"> 
					<textarea cols="82" rows="10" name="content">${dto.content}</textarea>
				</td>
			</tr>
			<tr>
				<td> <strong>비밀번호 확인</strong> </td>
				<td><input type="password" name="pwd"> </td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="수정">
					<a href="list.jsp"><input type="button" value="목록"></a>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>
<% 
	dao.close();
%>