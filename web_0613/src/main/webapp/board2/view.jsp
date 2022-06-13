<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board2/view</title>
<style>
	#uppwdchk { display:none; }
	#delpwdchk { display:none; }
</style>
</head>
<%@page import="java.sql.*" %>
<% 
	Class.forName("com.mysql.jdbc.Driver");
	String db = "jdbc:mysql://localhost:3306/board_test";
	Connection conn = DriverManager.getConnection(db, "root", "5032");
	
	String id = request.getParameter("id");
	
	String sql = "SELECT * FROM board2 WHERE id=?";
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, id);
	
	ResultSet rs = pstmt.executeQuery();
	rs.next();
%>
<script>
	function upView() {
		<%
		if(rs.getInt("secret") == 1) {
		%>
			location = "update.jsp?id=<%=rs.getString("id")%>";
		<%
		}
		else {
		%>
			document.getElementById("delpwdchk").style.display = "none";
			document.getElementById("uppwdchk").style.display = "table-row";
		<% } %>
	}
	function delView() {
		document.getElementById("uppwdchk").style.display = "none";
		document.getElementById("delpwdchk").style.display = "table-row";
	}
</script>
<body>
	<table width="500" border="1" align="center">
		<caption><h2>게시판 글보기</h2></caption>
		<tr>
			<td> 제 목 </td>
			<td> <%=rs.getString("title") %> </td>
		</tr>
		<tr>
			<td> 작성자 </td>
			<td> <%=rs.getString("writer") %> </td>
		</tr>
		<tr height="200">
			<td> 내 용 </td>
			<td> <%=rs.getString("content").replace("\r\n", "<br>") %> </td>
		</tr>
		<tr>
			<td> 조회수 </td>
			<td> <%=rs.getString("viewcnt") %> </td>
		</tr>
		<tr>
			<td> 작성일 </td>
			<td> <%=rs.getString("writeday") %> </td>
		</tr>
		<tr>
			<td> 지역 </td>
			<%
				String areaName="";
				switch(rs.getInt("area")) {
					case 0: areaName="서울"; break;
					case 1: areaName="경기"; break;
					case 2: areaName="강원"; break;
					case 3: areaName="충청"; break;
					case 4: areaName="전라"; break;
				}
			%>
			<td> <%=areaName %> </td>
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="button" onclick="upView()" value="수정">
				<a href="list.jsp"> <input type="button" value="목록"> </a>
				<input type="button" onclick="delView()" value="삭제">
			</td>
		</tr>
		<tr id="uppwdchk">
			<td colspan="2">
				<form method="post" action="update_check.jsp">
					<input type="hidden" name="id" value="<%=rs.getString("id") %>">
					<input type="password" name="pwd" placeholder="비밀번호를 입력하세요.">
					<input type="submit" value="확인">
				</form>
			</td>
		</tr>
		<tr id="delpwdchk">
			<td colspan="2">
				<form method="post" action="delete_check.jsp">
					<input type="hidden" name="id" value="<%=rs.getString("id") %>">
					<input type="password" name="pwd" placeholder="비밀번호를 입력하세요.">
					<input type="submit" value="확인">
				</form>
			</td>
		</tr>
	</table>
</body>
<%
	rs.close();
	pstmt.close();
	conn.close();
%>
</html>