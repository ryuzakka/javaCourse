<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SELECT : book</title>
<style>
	table { width:800px; border:1px solid; }
	table tr td { text-align:center; }
</style>
</head>
<%@ page import="java.sql.*" %>
<%
	Class.forName("com.mysql.jdbc.Driver");
	String db = "jdbc:mysql://localhost:3306/first_test";
	Connection conn = DriverManager.getConnection(db, "root", "5032");
	
	String sql = "SELECT * FROM book";
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	
	ResultSet rs = pstmt.executeQuery();
	
%>
<body>
	<div>
		<a href="insert.jsp"><input type="button" value="도서 등록"></a>
	</div><p>
	<table border="1">
		<tr>
			<td><strong>번호</strong></td>
			<td><strong>책제목</strong></td>
			<td><strong>저자</strong></td>
			<td><strong>가격</strong></td>
			<td><strong>출간일</strong></td>
			<td><strong>수정</strong></td>
			<td><strong>삭제</strong></td>
		</tr>
		<% while(rs.next()) { %>
		<tr>
			<td><%=rs.getString("id") %></td>
			<td><%=rs.getString("title") %></td>
			<td><%=rs.getString("name") %></td>
			<td><%=rs.getString("price") %></td>
			<td><%=rs.getString("writeday") %></td>
			<td><a href="update.jsp?id=<%=rs.getString("id") %>">수정</a></td>
			<td><a href="delete.jsp?id=<%=rs.getString("id") %>">삭제</a></td>
		</tr>
		<% } %>
	</table>
	
</body>
</html>

<%
	rs.close();
	pstmt.close();
	conn.close();
%>