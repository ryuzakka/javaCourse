<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="board.BoardDao" %>
<%@ page import="java.sql.ResultSet" %>
<%
	BoardDao dao = new BoardDao();
	ResultSet rs = dao.list();
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>list</title>
</head>
<body>	<!-- 0706/board/list.jsp -->
	
	<table width="600" align="center" border="1">
		<caption>
			<h2>게시판</h2>
			<h4 align="right"><a href="write.jsp"><input type="button" value="글쓰기"></a></h4>
		</caption>
		<tr>
			<td> 제 목 </td>
			<td> 작성자 </td>
			<td> 조회수 </td>
			<td> 작성일 </td>
		</tr>
	<%	while(rs.next()) { %>
		<tr>
			<td> <a href="readnum.jsp?id=<%=rs.getInt("id")%>"><%=rs.getString("title") %></a> </td>
			<td> <%=rs.getString("name") %> </td>
			<td> <%=rs.getString("readnum") %> </td>
			<td> <%=rs.getString("writeday") %> </td>
		</tr>
	<%	} %>
	</table>
	
</body>
</html>
<%
	rs.close();
	dao.close();
%>