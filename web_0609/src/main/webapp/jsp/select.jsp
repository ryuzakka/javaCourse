<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>select : member</title>
<style>
	table tr td {
		text-align:center;
	}
</style>
</head>
<body>
	<!-- member 테이블 내용을 읽어봐서 웹문서에 출력하기 -->
	<%
		Class.forName("com.mysql.jdbc.Driver");
		String db = "jdbc:mysql://localhost:3306/first_test";
		Connection conn = DriverManager.getConnection(db, "root", "5032");
	%>
	<%
		String sql = "SELECT * FROM member";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		ResultSet rs = pstmt.executeQuery();
	%>
	
	<table width="500" border="1">
		<tr>
			<td><strong>ID</strong></td>
			<td><strong>이름</strong></td>
			<td><strong>연락처</strong></td>
			<td><strong>나이</strong></td>
			<td><strong>수정</strong></td>
		</tr>
		<% while(rs.next()) { %>
		<tr>
			<td><a href="delete.jsp?bunho=<%=rs.getString("bunho") %>"><%=rs.getString("bunho") %></a></td>
			<td><%=rs.getString("name") %></td>
			<td><%=rs.getString("phone") %></td>
			<td><%=rs.getString("age") %></td>
			<td><a href="update.jsp?bunho=<%=rs.getString("bunho") %>">수정</a></td>
		</tr>
		<% } %>
		<tr>
			<td colspan="5"><a href="input.jsp">입력</a></td>
		</tr>
	</table>
	
	<% 	// 연결 종료
		rs.close();
		pstmt.close();
		conn.close();
	%>
	
</body>
</html>