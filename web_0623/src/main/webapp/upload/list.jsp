<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	Class.forName("com.mysql.jdbc.Driver");
	String db = "jdbc:mysql://localhost:3306/board_test";
	Connection conn = DriverManager.getConnection(db, "root", "5032");
	
	String sql = "select * from upload order by id desc";
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	
	ResultSet rs = pstmt.executeQuery();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>0623upload/list</title>
<style>
	#pop {
		visibility:hidden;
		position:absolute;
		left:30px;
		top:300px;
		width:300px;
	}
</style>
<script>
	function popup(my) {
		console.log(my);
		document.getElementById("aa").src = my;
		document.getElementById("pop").style.visibility = "visible";
	}
</script>
</head>
<body>	<!-- 0623upload/list.jsp -->
	
	<table width="600" align="center" border="1">
		<caption><h2>여행 후기 목록</h2></caption>
		<tr align="center">
			<td> 썸네일 </td>
			<td> 제 목 </td>
			<td> 이 름 </td>
			<td> 조회수 </td>
			<td> 작성일 </td>
		</tr>
	<% while(rs.next()) { %>
		<tr>
			<td><img width="50" src="img/<%=rs.getString("fname")%>" onclick="popup(this.src)"></td>
			<td><a href="viewcnt.jsp?id=<%=rs.getInt("id")%>"><%=rs.getString("title") %></a></td>
			<td> <%=rs.getString("name") %> </td>
			<td align="right"> <%=rs.getString("viewcnt") %> </td>
			<td align="right"> <%=rs.getString("writeday") %> </td>
		</tr>
	<% } %>
	
		<tr>
			<td colspan="5" align="left">
				<a href="write.jsp"><input type="button" value="글쓰기"></a>
			</td>
		</tr>
	</table>
	
	<div id="pop"><img id="aa"></div>
</body>
</html>

<%
	rs.close();
	pstmt.close();
	conn.close();
%>