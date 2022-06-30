<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	Class.forName("com.mysql.jdbc.Driver");
	String db = "jdbc:mysql://localhost:3306/first_test";
	Connection conn = DriverManager.getConnection(db, "root", "5032");
	
	String id = request.getParameter("id");
	int pager = Integer.parseInt(request.getParameter("pager"));
	
	String sql = "SELECT * FROM board1 WHERE id=?";

	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, id);
	
	ResultSet rs = pstmt.executeQuery();
	rs.next();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CONTENT</title>
<style>
	#del { display:none; }
</style>
<script>
	function delBox() {
		document.getElementById("del").style.display="table-row";
	}
</script>
</head>

<body>

	<table width="800" border="1">
		<tr>
			<td> <strong>제목</strong> </td>
			<td> <%= rs.getString("title") %> </td>
		</tr>
		<tr>
			<td> <strong>이름</strong> </td>
			<td> <%= rs.getString("name") %> </td>
		</tr>
		<tr height="200">
			<td> <strong>내용</strong> </td>
			<td width="700"> <%= rs.getString("content").replace("\r\n","<br>") %> </td>
		</tr>
		<tr>
			<td> <strong>조회수</strong> </td>
			<td> <%=rs.getString("readcnt") %> </td>
		</tr>
		<tr>
			<td> <strong>작성일</strong> </td>
			<td> <%=rs.getString("writeday") %> </td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<!-- <input type="submit" value="저장"> -->
				<a href="update.jsp?id=<%= rs.getString("id")%>&pager=<%=pager%>"><input type="button" value="수정"></a>
				<a href="list.jsp?pager=<%=pager%>"><input type="button" value="목록"></a>
				<a href="javascript:delBox()"><input type="button" value="삭제"></a>
			</td>
		</tr>
		<tr id="del">
			<td colspan="2" align="center">
				<form method="post" action="delete.jsp">
					<input type="hidden" name="id" value="<%= rs.getString("id") %>">
					<input type="hidden" name="pager" value="<%=pager%>">
					비밀번호 <input type="password" name="pwd" placeholder="비밀번호를 입력하세요.">
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