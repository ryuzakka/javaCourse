<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	Class.forName("com.mysql.jdbc.Driver");
	String db = "jdbc:mysql://localhost:3306/first_test";
	Connection conn = DriverManager.getConnection(db, "root", "5032");
	
	int pager;
	
	if(request.getParameter("pager") == null) {
		pager = 1;
	} else {
		pager = Integer.parseInt(request.getParameter("pager"));		
	}	
	int index = (pager - 1) * 10;
	
	String sql = "SELECT * FROM board1 order by id desc LIMIT ?,10";
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setInt(1, index);
	
	ResultSet rs = pstmt.executeQuery();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LIST</title>
<style>
	body { margin-left:30px; margin-top:50px; }
	h2 { margin-left:184px; }
	table tr td { /* text-align:center; */ }
</style>
</head>

<body>
	<h2> 자유게시판 </h2>
	<table width="500" border="1">
		<tr>
			<td colspan="4" align="right"><a href="write.jsp"><input type="button" value="글쓰기"></a></td>
		</tr>
		<tr>
			<td align="center"> <strong>제목</strong> </td>
			<td align="center"> <strong>작성자</strong> </td>
			<td align="center"> <strong>조회수</strong> </td>
			<td align="center"> <strong>작성일</strong> </td>
		</tr>
		<% while(rs.next()) { %>
		<tr>
			<td> <a href="readcnt.jsp?id=<%= rs.getString("id") %>"><%= rs.getString("title") %></a> </td>
			<td align="center"> <%= rs.getString("name") %> </td>
			<td align="right"> <%= rs.getString("readcnt") %> </td>
			<td align="right"> <%= rs.getString("writeday") %> </td>
		</tr>
		<% } %>
	</table>
<%
	sql = "select count(*) as cnt from board1";
	pstmt = conn.prepareStatement(sql);
	rs = pstmt.executeQuery();
	rs.next();
	int cnt = rs.getInt("cnt");
	
	
%>
</body>
</html>

<%
	rs.close();
	pstmt.close();
	conn.close();
%>