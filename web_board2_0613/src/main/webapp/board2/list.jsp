<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>board2/list</title>
	<style>
		#pwdin { visibility:hidden; position:absolute; }
		#pwdin div {
			border:1 solid grey;
			background:lightgrey;
			width:140px;
			height:40px;
			text-align:center;
			padding-top:10px;
			opacity:.8;
		}
	</style>
</head>
<%@ page import="java.sql.*" %>
<%
	Class.forName("com.mysql.jdbc.Driver");
	String db = "jdbc:mysql://localhost:3306/ezen";
	Connection conn = DriverManager.getConnection(db, "root", "dndb5032");
	
	String sql = "SELECT * FROM board2";
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	
	ResultSet rs = pstmt.executeQuery();
%>
<script>
	function pwdcheck(id) {
		var pwdinput = document.getElementById('pwdin');
		pwdinput.pwd.value = "";
		pwdinput.style.visibility = "visible";
		pwdinput.style.left = (event.pageX+5)+"px";
		pwdinput.style.top = event.pageY+"px";
		pwdinput.id.value = id; 
	}
</script>
<body>
	<table width="600" border="1" align="center">
		<caption><h2>게시판 목록</h2></caption>
		<tr>
			<td> 제 목 </td>
			<td> 작성자 </td>
			<td> 조회수 </td>
			<td> 작성일 </td>
		</tr>
	<% while(rs.next()) { %>
		<tr>
			<td>
			<% if(rs.getInt("secret") == 0) { %>
				<a href="viewcnt.jsp?id=<%=rs.getString("id")%>"> <%=rs.getString("title") %> </a>
			<% } else { %>
				<div onclick="pwdcheck(<%=rs.getString("id")%>)"><%=rs.getString("title") %></div>
				<form id="pwdin" method="post" action="viewcnt.jsp">
					<div>
						<input type="hidden" name="id" value="<%=rs.getString("id")%>">
						<input type="password" name="pwd" size="6">
						<input type="submit" value="확인">
					</div>
				</form>
			<% } %>
			</td>
			<td> <%=rs.getString("writer") %> </td>
			<td> <%=rs.getString("viewcnt") %> </td>
			<td> <%=rs.getString("writeday") %> </td>
		</tr>
	<% } %>
		<tr>
			<td colspan="4">
				<a href="write.jsp"><input type="button" value="글쓰기"></a>
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