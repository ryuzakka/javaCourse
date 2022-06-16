<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	Class.forName("com.mysql.jdbc.Driver");
	String db = "jdbc:mysql://localhost:3306/board_test";
	Connection conn = DriverManager.getConnection(db, "root", "5032");
	
	String sql = "select * from board2";
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	
	ResultSet rs = pstmt.executeQuery();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>list form</title>
<style>
	#pwdform { visibility:hidden; }
</style>
<script>
	function pwdCheck(id) {
		document.dhr.style.visibility = "visible";
		document.dhr.id.value = id;
	}
</script>
</head>
<body>
	<!-- 비밀번호 체크 양식 -->
	<form name="dhr" id="pwdform" method="post" action="viewcnt.jsp">
		<input type="hidden" name="id" value="">
		<input type="password" name="pwd" placeholder="비밀번호">
		<input type="submit" value="확인">
	</form>
	
	<!-- 게시판 리스트 -->
	<table width="600" align="center" border="1">
		<tr>
			<td> 제 목 </td>
			<td> 작성자 </td>
			<td> 조회수 </td>
			<td> 작성일 </td>
		</tr>
	<% while(rs.next()) { %>
		<tr>
		<% if(rs.getInt("secret") == 1) { %>
			<td onclick="pwdCheck(<%=rs.getInt("id")%>)"> <%=rs.getString("title") %> </td>
		<% } else { %>
			<td> <a href="viewcnt.jsp?id=<%=rs.getString("id") %>"><%=rs.getString("title") %></a> </td>
		<% } %>
			<td> <%=rs.getString("writer") %> </td>
			<td> <%=rs.getString("viewcnt") %> </td>
			<td> <%=rs.getString("writeday") %> </td>
		</tr>
	<% } %>
	</table>
	
	
</body>
</html>