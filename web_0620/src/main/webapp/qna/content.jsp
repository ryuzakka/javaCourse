<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<% 
	Class.forName("com.mysql.jdbc.Driver");
	String db = "jdbc:mysql://localhost:3306/board_test";
	Connection conn = DriverManager.getConnection(db, "root", "5032");
	
	String id = request.getParameter("id");
	
	String sql = "select * from qna where id=?";
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, id);
	
	ResultSet rs = pstmt.executeQuery();
	rs.next();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>0620qna/content</title>
<style>
	#pwdform { display:none; }
	#commentTable { display:none; }
</style>
<script>
	function delBtn() {
		document.getElementById('pwdform').style.display = "table-row";
	}
	function commentBtn() {
		document.getElementById('commentTable').style.display = "table";
	}
</script>

</head>
<body>	<!-- 0620qna/content -->
	
	<table width="500" align="center" border="1">
		<tr>
			<td> 제 목 </td>
			<td> <%=rs.getString("title") %> </td>
		</tr>
		<tr>
			<td> 이 름 </td>
			<td> <%=rs.getString("name") %> </td>
		</tr>
		<tr>
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
			<td colspan="2" align="center">
				<a href="update.jsp?id=<%=id%>"><input type="button" value="수정" ></a>
				<a href="list.jsp"><input type="button" value="목록"></a>
				<input type="button" value="삭제" onclick="delBtn()">
				<a href="rewrite.jsp?grp=<%=rs.getInt("grp") %>&depth=<%=rs.getInt("depth") %>&seq=<%=rs.getInt("seq") %>">
					<input type="button" value="답글">
				</a>
			</td>
		</tr>
		
		<tr id="pwdform">
			<form method="post" action="delete.jsp">
				<td colspan="2" align="center">
					<input type="hidden" name="id" value="<%=id%>">
					<input type="hidden" name="grp" value="<%=rs.getInt("grp")%>">
					<input type="hidden" name="depth" value="<%=rs.getInt("depth")%>">
					<input type="hidden" name="seq" value="<%=rs.getInt("seq")%>">
					<input type="password" name="pwd" size="6">
					<input type="submit" value="삭제하기">
				</td>
			</form>
		</tr>
	</table>
	<p>
	
	<!-- 현재글의 grp, depth, seq를 전달한다 -->
	<!-- 전달받은 grp, depth, seq를 답글에서는 grp는 그대로, depth와 seq는 +1을 해서 전달한다 -->
	
</body>
</html>

<%
	rs.close();
	pstmt.close();
	conn.close();
%>