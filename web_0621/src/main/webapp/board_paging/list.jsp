<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	Class.forName("com.mysql.jdbc.Driver");
	String db = "jdbc:mysql://localhost:3306/first_test";
	Connection conn = DriverManager.getConnection(db, "root", "5032");
	
	// request => 사용자가 원하는 페이지값
	int pager;
	
	if(request.getParameter("pager") == null) {
		pager = 1;
	}
	else {
		pager = Integer.parseInt(request.getParameter("pager"));				
	}
	
	// 사용자가 원하는 페이지의 index값 만들기
	int index = (pager - 1) * 10;
	
	String sql = "select * from board1 order by id desc limit ?,10";
	
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
	a {
		color:black;
		text-decoration:none;
	}
	a:hover {
		background:darkorange;
		color:white;
	}
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
			<td> <a href="readcnt.jsp?id=<%= rs.getString("id")%>&pager=<%=pager%>"><%= rs.getString("title") %></a> </td>
			<td align="center"> <%= rs.getString("name") %> </td>
			<td align="right"> <%= rs.getString("readcnt") %> </td>
			<td align="right"> <%= rs.getString("writeday") %> </td>
		</tr>
		<% } %>
		
		<tr>	<!-- 페이징 출력 부분 -->
			<%
				// pstart와 pend 구하기
				int num = pager / 10;
				if((pager % 10) == 0) {
					num --;
				}
				int pstart = (num * 10) + 1;
				int pend = pstart + 9;
				
				sql = "select ceil(count(*)/10) as total from board1";
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				rs.next();
				int total = rs.getInt("total");
				
				if(pend > total) {
					pend = total;
				}
			%>
			<td colspan="4" align="center">
				<a href="list.jsp"><input type="button" value="처음"></a>
				<% if(pstart == 1) {} else { %>
					<!-- 이전 10page 이동 -->
					<a href="list.jsp?pager=<%=pstart-1%>"><input type="button" value="prev"></a>
				<% } %>
				<% if(pager == 1) {} else { %>
					<!-- 이전 1page 이동 -->
					<a href="list.jsp?pager=<%=pager-1%>"><</a>
				<% } %>
				<!-- 페이지 번호 출력 -->
				<% for(int i=pstart; i<pend+1; i++) { %>
					<% if(pager == i) { %>
					<span style="color:darkorange;font-size:20px;"><%=i %></span>
					<% } else {%>
					<a href="list.jsp?pager=<%=i%>"><%=i %></a>
					<% } %>
				<% } %>
				
				<% if(pager == total) {} else { %>
					<!-- 다음 1page 이동 -->
					<a href="list.jsp?pager=<%=pager+1%>">></a>
				<% } %>
				<% if(pend == total) {} else { %>
					<!-- 다음 10page 이동 -->
					<a href="list.jsp?pager=<%=pend+1%>"><input type="button" value="next"></a>
				<% } %>
				<a href="list.jsp?pager=<%=total%>"><input type="button" value="마지막"></a>
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