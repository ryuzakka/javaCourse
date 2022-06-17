<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	Class.forName("com.mysql.jdbc.Driver");
	String db = "jdbc:mysql://localhost:3306/board_test";
	Connection conn = DriverManager.getConnection(db, "root", "5032");
	
	String sql = "select * from gesipan order by id desc";
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	
	ResultSet rs = pstmt.executeQuery();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>gesipan/list</title>
</head>
<body>	<!-- gesipan/list -->
	
	<!-- 검색(제목) -->
	<form name="srchform" method="post" action="search.jsp" align="center">
		<input type="text" name="keyword" placeholder="검색어를 입력하세요." >
		<input type="submit" value="검색" >
	</form>
	
	<table width="500" align="center" border="1">
		<caption><h2>게시판 목록</h2></caption>
		<tr>
			<td> <strong>제 목</strong> </td>
			<td> <strong>작성자</strong> </td>
			<td> <strong>조회수</strong> </td>
			<td> <strong>작성일</strong> </td>
		</tr>
	<% while(rs.next()) { %>
		<tr>
			<td> <a href="content_cnt.jsp?id=<%=rs.getString("id") %>"> <%=rs.getString("title") %></a> </td>
			<td> <%=rs.getString("writer") %> </td>
			<td> <%=rs.getString("viewcnt") %> </td>
			<td> <%=rs.getString("writeday") %> </td>
		</tr>
	<% } %>
		<tr>
			<td colspan="4" align="left">
				<a href="write.jsp"><input type="button" value="글쓰기" ></a>
			</td>
		</tr>
	</table>
	
</body>
</html>
<%
	rs.close();
	pstmt.close();
	conn.close();
%>