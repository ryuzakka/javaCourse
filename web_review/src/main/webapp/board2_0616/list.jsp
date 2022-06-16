<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- select * query -->
<%@ page import="java.sql.*" %>
<%
	Class.forName("com.mysql.jdbc.Driver");
	String db = "jdbc:mysql://localhost:3306/ezen";
	Connection conn = DriverManager.getConnection(db, "root", "dndb5032");
	
	String sql = "select * from board2 order by id desc";
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	
	ResultSet rs = pstmt.executeQuery();
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>board2_0616/list</title>
	<style>
		#pwdBlock {
			border:1px solid #eeeeee;
			background:#eeeeee;
			width:140px;
			height:30px;
			visibility:hidden;
			position:absolute;
			padding-left:14px;
			padding-top:7px;
			opacity:0.9;
		}
/* 		#pwdform { visibility:hidden; position:absolute; } */
	</style>
	<script>
		function scrTitle(id) {
			document.getElementById('pwdBlock').style.visibility = "visible";
			document.getElementById('pwdBlock').style.left = (event.pageX+7)+"px";
			document.getElementById('pwdBlock').style.top = event.pageY+"px";
			var form = document.getElementById("pwdform");
			form.action = "viewcnt.jsp";
			form.style.visibility = "visible";
			form.id.value = id;
		}
	</script>
</head>
<body>	<!-- board2_0616/list -->
	
	<!-- 게시판 리스트 출력 -->
	<table width="500" align="center" border="1">
		<caption><h2> 게시판 목록 </h2></caption>
		<tr align="center">
			<td> <strong>제 목</strong> </td>
			<td> <strong>작성자</strong> </td>
			<td> <strong>조회수</strong> </td>
			<td> <strong>작성일</strong> </td>
		</tr>
	<% while(rs.next()) { %>
		<tr>
		<% if(rs.getInt("secret") == 1) { %>
			<td onclick="scrTitle(<%=rs.getString("id") %>)"> <%=rs.getString("title") %> </td>
		<% } else {%>
			<td><a href="viewcnt.jsp?id=<%=rs.getString("id") %>"><%=rs.getString("title") %></a> </td>
		<% } %>
			<td> <%=rs.getString("writer") %> </td>
			<td> <%=rs.getString("viewcnt") %> </td>
			<td> <%=rs.getString("writeday") %> </td>
		</tr>
	<% } %>
	
		<tr>
			<td colspan="4" align="right">
				<a href="write.jsp"> <input type="button" value="글쓰기" > </a>
			</td>
		</tr>
	</table>
	
	
	<!-- 비밀번호 확인 양식 -->
	
	<div id="pwdBlock">
		<form id="pwdform" method="post" action="">
			<input type="hidden" name="id" value="" >
			<input type="password" name="pwd" size="5" >
			<input type="submit" value="확인" >
		</form>
	</div>
	
</body>
</html>