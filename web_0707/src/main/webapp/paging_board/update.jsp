<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="board_page.BoardDao" %>
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
<title>update</title>
</head>
<body>	<!-- 0706/board/update.jsp -->
	
	<form method="post" action="update_ok.jsp">
	<table width="440" align="center" border="1">
		<caption><h2>게시글 상세</h2></caption>
		<input type="hidden" name="id" value="<%=rs.getInt("id") %>">
		<tr>
			<td> 제 목 </td>
			<td> <input type="text" name="title" value="<%=rs.getString("title") %>"> </td>
		</tr>
		<tr>
			<td> 작성자 </td>
			<td> <input type="text" name="name" value="<%=rs.getString("name") %>"> </td>
		</tr>
		<tr>
			<td> 내 용 </td>
			<td> <textarea cols="42" rows="10" name="content"><%=rs.getString("content") %></textarea> </td>
		</tr>
		<tr>
			<td> 비밀번호 </td>
			<td> <input type="password" name="pwd" > </td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="submit" value="수정하기"> <p>
				<a href="content.jsp?id=<%=rs.getInt("id")%>"><input type="button" value="뒤로가기"></a>
				<a href="list.jsp"><input type="button" value="목록"></a>
			</td>
		</tr>
	</table>
	</form>
	
</body>
</html>