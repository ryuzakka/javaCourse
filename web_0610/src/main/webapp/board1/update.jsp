<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>UPDATE</title>
</head>
<%@ page import="java.sql.*" %>
<%
	Class.forName("com.mysql.jdbc.Driver");
	String db = "jdbc:mysql://localhost:3306/first_test";
	Connection conn = DriverManager.getConnection(db, "root", "5032");
	
	String id = request.getParameter("id");
	
	String sql = "SELECT * FROM board1 WHERE id=?";
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, id);
	
	ResultSet rs = pstmt.executeQuery();
	rs.next();
%>
<body>
	<form method="post" action="update_ok.jsp">
		<table width="800" border="1">
			<input type="hidden" name="id" value="<%=rs.getString("id") %>">
			<tr>
				<td> <strong>제목</strong> </td>
				<td> <input type="text" name="title" value="<%= rs.getString("title")%>" required> </td>
			</tr>
			<tr>
				<td> <strong>작성자</strong> </td>
				<td><input type="text" name="name" value="<%=rs.getString("name") %>" required> </td>
			</tr>
			<tr height="200">
				<td> <strong>내용</strong> </td>
				<td width="700"> 
					<textarea cols="82" rows="10" name="content"><%= rs.getString("content") %></textarea>
				</td>
			</tr>
			<tr>
				<td> <strong>비밀번호 확인</strong> </td>
				<td><input type="password" name="pwd"> </td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="수정">
					<a href="list.jsp"><input type="button" value="목록"></a>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>
<% 
	pstmt.close();
	conn.close();
%>