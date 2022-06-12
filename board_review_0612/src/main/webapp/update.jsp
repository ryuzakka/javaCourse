<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board:update</title>
</head>
<%@ page import="java.sql.*" %>
<%
	Class.forName("com.mysql.jdbc.Driver");
	String db = "jdbc:mysql://localhost:3306/ezen";
	Connection conn = DriverManager.getConnection(db, "root", "dndb5032");
	
	String id = request.getParameter("id");
	
	String sql = "SELECT * FROM board1 WHERE id=?";
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, id);
	
	ResultSet rs = pstmt.executeQuery();
	rs.next();
	
%>
<body>
	<h2>글수정</h2>
	
	<table width="700">
		<form method="post" action="update_ok.jsp">
		<input type="hidden" name="id" value="<%=rs.getString("id") %>">
		<tr>
			<td>글 제목</td>
			<td>
				<input type="text" name="title" value="<%=rs.getString("title") %>" required>
			</td>
		</tr>
		<tr>
			<td>작성자</td>
			<td>
				<input type="text" name="writer" value="<%=rs.getString("name") %>" required>
			</td>
		</tr>
		<tr height="250">
			<td>내용</td>
			<td>
				<textarea cols="40" rows="18" name="content"><%=rs.getString("content") %></textarea>
			</td>
		</tr>
		<tr>
			<td>
				<input type="submit" value="작성완료">
			</td>
			<td>
				<a href="view.jsp?id=<%=id %>"><input type="button" value="뒤로가기"> </a>
			</td>
		</tr>
		</form>
	</table>
</body>
</html>
<%
	rs.close();
	pstmt.close();
	conn.close();
%>