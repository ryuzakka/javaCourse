<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>select</title>
</head>
<body>
	<!-- member 테이블 내용을 읽어봐서 웹문서에 출력하기 -->
	<%
		Class.forName("com.mysql.jdbc.Driver");
		String db = "jdbc:mysql://localhost:3306/first_test";
		Connection conn = DriverManager.getConnection(db, "root", "5032");
		
		String sql = "SELECT * FROM member";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		ResultSet rs = pstmt.executeQuery();
	%>
	<table width="400" border="1">
		<tr>
			<td align="center"><strong>ID</strong></td>
			<td align="center"><strong>이름</strong></td>
			<td align="center"><strong>연락처</strong></td>
			<td align="center"><strong>나이</strong></td>
		</tr>
		<% while(rs.next()) { %>
		<tr>
			<td><%=rs.getString("bunho") %></td>
			<td><%=rs.getString("name") %></td>
			<td><%=rs.getString("phone") %></td>
			<td><%=rs.getString("age") %></td>
		</tr>
		<% } %>
	</table>
	<p><hr><p>
	<%
		sql = "SELECT * FROM book";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
	%>
	<table width="700" border="1">
		<tr>
			<td align="center"><strong>ID</strong></td>
			<td align="center"><strong>책제목</strong></td>
			<td align="center"><strong>저자</strong></td>
			<td align="center"><strong>가격</strong></td>
			<td align="center"><strong>출간일</strong></td>
		</tr>
		<% while(rs.next()) { %>
		<tr>
			<td><%=rs.getString("id") %></td>
			<td><%=rs.getString("title") %></td>
			<td><%=rs.getString("name") %></td>
			<td><%=rs.getString("price") %></td>
			<td><%=rs.getString("writeday") %></td>
		</tr>
		<% } %>
	</table>
	<% 
		rs.close();
		pstmt.close();
		conn.close();
	%>
</body>
</html>