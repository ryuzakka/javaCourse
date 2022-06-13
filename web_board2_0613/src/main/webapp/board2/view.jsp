<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board2/view</title>
<style>
	#updtr { display:none; }
	#deltr { display:none; }
</style>
</head>
<%@ page import="java.sql.*" %>
<%
	Class.forName("com.mysql.jdbc.Driver");
	String db = "jdbc:mysql://localhost:3306/ezen";
	Connection conn = DriverManager.getConnection(db, "root", "dndb5032");
	
	String id = request.getParameter("id");
	
	String sql = "SELECT * FROM board2 WHERE id=?";
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, id);
	
	ResultSet rs = pstmt.executeQuery();
	rs.next();
%>
<body>
	<table width="600" border="1" align="center">
		<tr>
			<td> 제 목 </td>
			<td> <%=rs.getString("title") %> </td>
		</tr>
		<tr>
			<td> 작성자 </td>
			<td> <%=rs.getString("writer") %> </td>
		</tr>
		<tr>
			<td height="200"> 내 용 </td>
			<td> <%=rs.getString("content").replace("\r\n", "<br>") %> </td>
		</tr>
		<tr>
			<%
				String area = "";
				switch(rs.getInt("area")) {
				case 0: area="서울"; break;
				case 1: area="경기"; break;
				case 2: area="인천"; break;
				case 3: area="강원"; break;
				case 4: area="충청"; break;
				case 5: area="전라"; break;
				case 6: area="경상"; break;
				case 7: area="제주"; break;
				}
			%>
			<td> 지역 </td>
			<td> <%=area%> </td>
		</tr>
		<tr>
		<%
			String result;
			if(rs.getInt("secret") == 1)
				result = "비밀글 입니다.";
			else
				result = "비밀글이 아닙니다.";
		%>
			<td> 비밀글 여부 </td>
			<td> <%=result%> </td>
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
				<input type="button" onclick="updYN()" value="수정">
				<a href="list.jsp"><input type="button" value="목록"></a>
				<input type="button" onclick="delYN()" value="삭제">
			</td>
		</tr>
		<tr id="updtr">
			<td colspan="2" align="center">
				<form method="post" action="update_pwdchk.jsp">
					<input type="hidden" name="id" value="<%=rs.getString("id")%>">
					<input type="password" name="pwd">
					<input type="submit" value="확인">
				</form>
			</td>
		</tr>
		<tr id="deltr">
			<td colspan="2" align="center">
				<form method="post" action="delete.jsp">
					<input type="hidden" name="id" value="<%=rs.getString("id")%>">
					<input type="password" name="pwd">
					<input type="submit" value="삭제">
				</form>
			</td>
		</tr>
	</table>
</body>
</html>
<script>
	function updYN() {
		document.getElementById('deltr').style.display = "none";
		document.getElementById('updtr').style.display = "table-row";
	}
	function delYN() {
		document.getElementById('updtr').style.display = "none";
		document.getElementById('deltr').style.display = "table-row";
	}
</script>