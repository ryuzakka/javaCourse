<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="login.BoardDao" %>
<%@ page import="java.sql.ResultSet" %>
<%
	BoardDao dao = new BoardDao();
	dao.checkSession(session, response);
	ResultSet rs = dao.content(request, response);
	rs.next();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login/board/update</title>
</head>
<body>
	
	<form method="post" action="update_ok.jsp">
		<table width="500" border="1" align="center">
			<caption><h2>게시글 수정</h2></caption>
			<input type="hidden" name="id" value="<%=rs.getInt("id")%>">
			<tr>
				<td> 작성자 </td>
				<td> <%=rs.getString("name") %> </td>
			</tr>
			<tr>
				<td> <strong>제목</strong> </td>
				<td> <input type="text" name="title" size="40" value="<%=rs.getString("title") %>" required> </td>
			</tr>
			<tr height="200">
				<td> <strong>내용</strong> </td>
				<td width="400">
					<textarea cols="42" rows="10" name="content"><%=rs.getString("content") %></textarea>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="저장"><p>
					<a href="content.jsp?id=<%=rs.getInt("id")%>"><input type="button" value="뒤로가기"></a>
					<a href="list.jsp"><input type="button" value="리스트"></a>
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