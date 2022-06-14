<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board2/update</title>
</head>
<%@ page import="java.sql.*" %>
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
	function init() {
		// radio
		document.chk.area[<%=rs.getString("area")%>].checked = true;
		// checkbox
		if(<%=rs.getInt("secret")%> == 1) {
			document.chk.secret.checked = true;
		}
	}
</script>
<body onload="init()">
	<form name="chk" method="post" action="update_ok.jsp">
		<table width="500" border="0" align="center">
			<caption><h2>게시판 수정</h2></caption>
			<input type="hidden" name="id" value="<%=rs.getString("id")%>">
			<tr>
				<td> 제 목 </td>
				<td> <input type="text" name="title" value="<%=rs.getString("title") %>"> </td>
			</tr>
			<tr>
				<td> 작성자 </td>
				<td> <input type="text" name="writer" value="<%=rs.getString("writer") %>"> </td>
			</tr>
			<tr height="200">
				<td> 내 용 </td>
				<td>
					<textarea rows="8" cols="42" name="content"><%=rs.getString("content") %></textarea>
				</td>
			</tr>
			<tr>
				<td> 지역 </td>
				<td>
					<input type="radio" name="area" value="0">서울
					<input type="radio" name="area" value="1">경기
					<input type="radio" name="area" value="2">강원
					<input type="radio" name="area" value="3">충청
					<input type="radio" name="area" value="4">전라
				</td>
			</tr>
			<tr>
				<td></td>
				<td>
					<input type="checkbox" name="secret" value="1">
					체크하시면 해당글은 비밀글이 됩니다.
				</td>
			</tr>
			<tr>
				<td></td>
				<td>
					<input type="submit" value="저장">
					<a href="view.jsp?id=<%=rs.getString("id")%>"> <input type="button" value="취소"> </a>
				</td>
			</tr>
		</table>
	</form>
</body>
<%
	rs.close();
	pstmt.close();
	conn.close();
%>
</html>