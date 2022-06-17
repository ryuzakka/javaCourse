<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	if(request.getHeader("referer")==null)
	{
	   response.sendRedirect("list.jsp");
	}
	Class.forName("com.mysql.jdbc.Driver");
	String db = "jdbc:mysql://localhost:3306/board_test";
	Connection conn = DriverManager.getConnection(db, "root", "5032");
	
	String id = request.getParameter("id");
	String sql = "select * from gesipan where id=?";
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, id);
	
	ResultSet rs = pstmt.executeQuery();
	rs.next();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>gesipan/content</title>
<style>
	#pwdform { display:none; }
</style>
<script>
	function delBtn() {
		document.getElementById('pwdform').style.display = "table-row";
	}
</script>
</head>
<body>	<!-- gesipan/content -->
	
	<table width="500" align="center" border="1">
		<caption><h2>게시판 상세글</h2></caption>
		<tr>
			<td> 제 목 </td>
			<td> <%=rs.getString("title") %> </td>
		</tr>
		<tr>
			<td> 작성자 </td>
			<td> <%=rs.getString("writer") %> </td>
		</tr>
		<tr>
			<td> 이메일 </td>
			<td> <%=rs.getString("email") %> </td>
		</tr>
		<tr>
			<td> 조회수 </td>
			<td> <%=rs.getInt("viewcnt") %> </td>
		</tr>
		<tr>
			<td> 작성일 </td>
			<td> <%=rs.getString("writeday") %> </td>
		</tr>
		<tr>
			<td> 내 용 </td>
			<td> <%=rs.getString("content").replace("\r\n", "<br>") %> </td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<a href="update.jsp?id=<%=id%>"><input type="button" value="수정" ></a>
				<a href="list.jsp"><input type="button" value="목록" ></a>
				<input type="button" value="삭제" onclick="delBtn()">
			</td>
		</tr>
		
		<!-- 삭제 : 비밀번호 입력칸 -->
		<tr id="pwdform">
			<td colspan="2" align="center">
				<form method="post" action="delete.jsp">
					<input type="hidden" name="id" value="<%=id %>">
					<input type="password" name="pwd" >
					<input type="submit" value="삭제">
				</form>
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