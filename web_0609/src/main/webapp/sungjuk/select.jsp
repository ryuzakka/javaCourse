<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SELECT : sungjuk</title>
<style>
	table {  }
	table tr { border:1px solid; }
	table tr td { text-align:center; }
</style>
</head>
<%
	Class.forName("com.mysql.jdbc.Driver");
	String db = "jdbc:mysql://localhost:3306/first_test";
	Connection conn = DriverManager.getConnection(db, "root", "5032");
	
	String sql = "SELECT * FROM sungjuk";
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	
	ResultSet rs = pstmt.executeQuery();
%>
<body>
	<table border="1" width="500">
		<tr>
			<td>학번</td>
			<td>이름</td>
			<td>국어점수</td>
			<td>영어점수</td>
			<td>수학점수</td>
			<td>수정</td>
			<td>삭제</td>
		</tr>
	<% while(rs.next()) { %>
		<tr>
			<td><%= rs.getString("hakbun") %></td>
			<td><%= rs.getString("name") %></td>
			<td><%= rs.getString("kor") %></td>
			<td><%= rs.getString("eng") %></td>
			<td><%= rs.getString("mat") %></td>
			<td><a href="update.jsp?hakbun=<%= rs.getString("hakbun") %>">수정</a></td>
			<td><a href="delete.jsp?hakbun=<%= rs.getString("hakbun") %>">삭제</a></td>
		</tr>
	<% } %>
		<tr><td colspan="7"><a href="insert.jsp">학생 추가</a></td></tr>
	</table>
</body>
</html>
<%
	rs.close();
	pstmt.close();
	conn.close();
%>