<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board:view</title>
<style>
	#upcheck { display:none; }
	#delcheck { display:none; }
</style>
<script>
	function upCheck() {
		document.getElementById("delcheck").style.display = "none";
		document.getElementById("upcheck").style.display = "table-row";
	}
	function delCheck() {
		document.getElementById("upcheck").style.display = "none";
		document.getElementById("delcheck").style.display = "table-row";
	}
</script>
</head>
<%@ page import="java.sql.*" %>
<%
	Class.forName("com.mysql.jdbc.Driver");
	String db = "jdbc:mysql://localhost:3306/ezen";
	Connection conn = DriverManager.getConnection(db, "root", "dndb5032");
	
	String id = request.getParameter("id");
	
	String sql = "SELECT * FROM board1 WHERE id=?";
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, id);
	
	ResultSet rs = pstmt.executeQuery();
	rs.next();
%>
<body>
	<h2>글읽기</h2>
	<table width="800" border="1">
		<tr>
			<td>글 제목</td>
			<td>
				<%=rs.getString("title") %>
			</td>
		</tr>
		<tr>
			<td>작성자</td>
			<td>
				<%=rs.getString("name") %>
			</td>
		</tr>
		<tr height="400">
			<td>내용</td>
			<td>
				<%=rs.getString("content").replace("\r\n", "<br>") %>
			</td>
		</tr>
		<tr>
			<td>조회수</td>
			<td>
				<%=rs.getString("viewcnt") %>
			</td>
		</tr>
		<tr>
			<td>작성일</td>
			<td>
				<%=rs.getString("writeday") %>
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="button" onclick="upCheck()" value="수정">
				<a href="list.jsp"><input type="button" value="목록"> </a>
				<input type="button" onclick="delCheck()" value="삭제">
			</td>
		</tr>
		<tr id="upcheck">
			<td colspan="2" align="center">
				<form method="post" action="update_pwd_ok.jsp">
					수정 확인 <input type="password" name="pwd" placeholder="비밀번호를 입력하세요.">
					<input type="hidden" name="id" value="<%=rs.getString("id") %>">
					<input type="submit" value="확인">
				</form>
			</td>
		</tr>
		<tr id="delcheck">
			<td colspan="2" align="center">
				<form method="post" action="delete_pwd_ok.jsp">
					삭제 확인 <input type="password" name="pwd" placeholder="비밀번호를 입력하세요.">
					<input type="hidden" name="id" value="<%=rs.getString("id") %>">
					<input type="submit" value="확인">
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