<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="login.BoardDao" %>
<%@ page import="java.sql.ResultSet" %>
<%
	BoardDao dao = new BoardDao();
	dao.checkSession(session, response);
	ResultSet rs = dao.list();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login/list</title>
</head>
<body>
	
	<table width="500" border="1" align="center">
		<caption>
			<h2>회원전용 게시판</h2>
			<input type="button" value="글쓰기" onclick="javascript:location='write.jsp'">
		</caption>
		<tr>
			<td> 제 목 </td>
			<td> 작성자 </td>
			<td> 조회수 </td>
			<td> 작성일 </td>
		</tr>
	<% while(rs.next()) { %>
		<tr>
			<td>
				<a href="readnum.jsp?id=<%=rs.getInt("id")%>"><%=rs.getString("title") %></a>
			</td>
			<td> <%=rs.getString("name") %> </td>
			<td> <%=rs.getString("readnum") %> </td>
			<td> <%=rs.getString("writeday") %> </td>
		</tr>
	<% } %>
		
	</table>
	
	<div align="center">
		<input type="button" value="메인으로" onclick="javascript:location='../main.jsp'">
	</div>
	
</body>
</html>
<% dao.close(); %>