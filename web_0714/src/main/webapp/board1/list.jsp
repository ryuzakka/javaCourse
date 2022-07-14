<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="board.BoardDao" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	BoardDao dao = new BoardDao();
	dao.list(request);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LIST</title>
<style>
	body { margin-left:30px; margin-top:50px; }
	h2 { margin-left:184px; }
	table tr td { /* text-align:center; */ }
</style>
</head>
<body>
	<h2> 자유게시판 </h2>
	<table width="500" border="1">
		<tr>
			<td colspan="4" align="right"><a href="write.jsp"><input type="button" value="글쓰기"></a></td>
		</tr>
		<tr>
			<td align="center"> <strong>제목</strong> </td>
			<td align="center"> <strong>작성자</strong> </td>
			<td align="center"> <strong>조회수</strong> </td>
			<td align="center"> <strong>작성일</strong> </td>
		</tr>

		<c:forEach items="${list}" var="dto">
			<tr>
				<td> <a href="readcnt.jsp?id=${dto.id}">${dto.title}</a> </td>
				<td align="center">${dto.name}</td>
				<td align="right"> ${dto.readcnt}</td>
				<td align="right"> ${dto.writeday}</td>
			</tr>
		</c:forEach>

	</table>
</body>
</html>

<% dao.close(); %>