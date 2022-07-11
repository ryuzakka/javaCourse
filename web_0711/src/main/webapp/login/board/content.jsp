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
<title>login/board/content</title>
</head>
<body>
	
	<table width="500" border="1" align="center">
		<caption><h2>게시판 상세</h2></caption>
		<tr>
			<td> <strong>작성자</strong> </td>
			<td> <%=rs.getString("name") %> </td>
		</tr>
		<tr>
			<td> <strong>제목</strong> </td>
			<td> <%=rs.getString("title") %> </td>
		</tr>
		<tr height="200">
			<td> <strong>내용</strong> </td>
			<td width="400">
				<%=rs.getString("content") %>
			</td>
		</tr>
		<tr>
			<td> 조회수 </td>
			<td> <%=rs.getInt("readnum") %> </td>
		</tr>
		<tr>
			<td> 작성일 </td>
			<td> <%=rs.getString("writeday") %> </td>
		</tr>
		<tr>
			<td colspan="2" align="center">
			<% if(session.getAttribute("userid").equals(rs.getString("userid"))) { %>
				<a href="update.jsp?id=<%=rs.getInt("id")%>"><input type="button" value="수정"></a>
				<a href="delete.jsp?id=<%=rs.getInt("id")%>"><input type="button" value="삭제"></a> <p>
			<% } %>
				<a href="list.jsp"><input type="button" value="리스트"></a>
			</td>
		</tr>
	</table>
	
</body>
</html>
<%
	rs.close();
	dao.close();
%>