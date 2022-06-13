<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board2/update</title>
<script>
	function init() {
		document.updform.area[<%=rs.getString("area")%>].checked = true;
		
		if(<%=rs.getInt("secret")%> == 1)
			document.updform.secret.checked = true;
	}
</script>
</head>
<body onload="init()">
	<form name="updform" method="post" action="update_ok.jsp">
	<table width="600" border="1" align="center">
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
		<tr>
			<td height="200"> 내 용 </td>
			<td> <textarea rows="8" cols="62" name="content"><%=rs.getString("content")%></textarea> </td>
		</tr>
		<tr>
			<td> 지역 </td>
			<td>
				<input type="radio" name="area" value="0">서울 
				<input type="radio" name="area" value="1">경기
				<input type="radio" name="area" value="2">인천 
				<input type="radio" name="area" value="3">강원 
				<input type="radio" name="area" value="4">충청 
				<input type="radio" name="area" value="5">전라 
				<input type="radio" name="area" value="6">경상 
				<input type="radio" name="area" value="7">제주
			</td>
		</tr>
		<tr>
			<td> 비밀글 여부 </td>
			<td> <input type="checkbox" name="secret"> 체크하면 비밀글로 설정됩니다.  </td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="submit" value="저장">
				<a href="list.jsp"><input type="button" value="목록"></a>
			</td>
		</tr>
	</table>
	</form>
</body>
</html>
