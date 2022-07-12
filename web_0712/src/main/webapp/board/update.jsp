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
<title>board/update</title>
</head>
<body>
	
	<form method="post" action="update_ok.jsp">
	<table width="500" align="center" border="1">
		<input type="hidden" name="id" value="<%=id%>">
		<tr>
			<td> 제 목 </td>
			<td> <input type="text" name="title" value="<%=rs.getString("title") %>" required> </td>
		</tr>
		<tr>
			<td> 작성자 </td>
			<td> <input type="text" name="name" value="<%=rs.getString("name") %>" required> </td>
		</tr>
		<tr>
			<td> 비밀번호 </td>
			<td> <input type="password" name="pwd" required> </td>
		</tr>
		<tr>
			<td> 내 용 </td>
			<td> <textarea cols="52" rows="5" name="content"><%=rs.getString("content") %></textarea> </td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<p> <input type="submit" value="저장"> </p>
				<input type="button" value="목록으로" onclick="javascript:location='list.jsp'">
			</td>
		</tr>
	</table>
	</form>
	
</body>
</html>
<%
	rs.close();
	dao.close();
%>