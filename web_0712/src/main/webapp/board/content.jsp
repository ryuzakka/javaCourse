<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="board.BoardDao" %>
<%@ page import="java.sql.ResultSet" %>
<%
	BoardDao dao = new BoardDao();
	int id = Integer.parseInt(request.getParameter("id"));
	ResultSet rs = dao.content(id);
	rs.next();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board/content</title>
<style>
	#pwdcheck {
		display:none;
	}
</style>
<script>
	function pwdcheckForm() {
		document.getElementById('pwdcheck').style.display = "table-row";
	}
</script>
</head>
<body>
	
	<table width="500" align="center" border="1">
		<caption>
			<h2><%=rs.getString("title") %></h2>
		</caption>
		<tr>
			<td> 제 목 </td>
			<td> <%=rs.getString("title") %> </td>
		</tr>
		<tr>
			<td> 작성자 </td>
			<td> <%=rs.getString("name") %> </td>
		</tr>
		<tr>
			<td> 내 용 </td>
			<td> <%=rs.getString("content").replace("\r\n", "<br>") %> </td>
		</tr>
		<tr>
			<td> 조회수 </td>
			<td> <%=rs.getString("readnum") %> </td>
		</tr>
		<tr>
			<td> 작성일 </td>
			<td> <%=rs.getString("writeday") %> </td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<a href="update.jsp?id=<%=id%>"><input type="button" value="수정"></a>
				<input type="button" value="삭제" onclick="pwdcheckForm()">
				<p><input type="button" value="목록으로" onclick="javascript:location='list.jsp'"> </p>
			</td>
		</tr>
		
		<tr id="pwdcheck">
			<td colspan="2" align="center">
				<form name="pwdcheck_form" method="post" action="delete.jsp">
					<input type="hidden" name="id" value="<%=id%>">
					<input type="password" name="pwd" placeholder="비밀번호">
					<input type="submit" name="submit" value="삭제하기">
				</form>
			</td>
		</tr>
	</table>
	
</body>
</html>
<%
	rs.close();
	dao.close();
%>