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
<title>CONTENT (el)</title>
<style>
	#del { display:none; }
</style>
<script>
	function delBox() {
		document.getElementById("del").style.display="table-row";
	}
</script>
</head>
<body>

	<table width="800" border="1">
		<tr>
			<td> <strong>제목</strong> </td>
			<td> ${dto.title} </td>
		</tr>
		<tr>
			<td> <strong>이름</strong> </td>
			<td> ${dto.name} </td>
		</tr>
		<tr height="200">
			<td> <strong>내용</strong> </td>
			<td width="700"> ${dto.content} </td>
		</tr>
		<tr>
			<td> <strong>조회수</strong> </td>
			<td> ${dto.readcnt}</td>
		</tr>
		<tr>
			<td> <strong>작성일</strong> </td>
			<td> ${dto.writeday}</td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<!-- <input type="submit" value="저장"> -->
				<a href="update.jsp?id=${dto.id}"><input type="button" value="수정"></a>
				<a href="list.jsp"><input type="button" value="목록"></a>
				<a href="#" onclick="delBox()"><input type="button" value="삭제"></a>
			</td>
		</tr>
		<tr id="del">
			<td colspan="2" align="center">
				<form method="post" action="delete.jsp">
					<input type="hidden" name="id" value="${dto.id}">
					비밀번호 <input type="password" name="pwd" placeholder="비밀번호를 입력하세요.">
					<input type="submit" value="확인">
				</form>
			</td>
		</tr>
	</table>

</body>
</html>
<%
	dao.close();
%>