<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	Class.forName("com.mysql.jdbc.Driver");
	String db = "jdbc:mysql://localhost:3306/ezen";
	Connection conn = DriverManager.getConnection(db, "root", "dndb5032");
	
	String id = request.getParameter("id");
	
	String sql = "select * from board2 where id=?";
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, id);
	
	ResultSet rs = pstmt.executeQuery();
	rs.next();
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>integrated_board/update</title>
	<script>
		function init() {
			if(<%=rs.getInt("secret")%> == 1)
				document.getElementById('updform').secret.checked = true;
		}
	</script>
</head>
<body onload="init()">	<!-- integrated_board/update -->

	<table width="500" align="center" border="1">
		<caption><h2>게시판 글수정</h2></caption>
		
		<form id="updform" method="post" action="update_proc.jsp">
			<input type="hidden" name="id" value="<%=rs.getInt("id")%>">
			<tr>
				<td> 비밀글 </td>
				<td> <input type="checkbox" name="secret" > 체크하면 비밀글로 설정됩니다. </td>
			</tr>
			<tr>
				<td> 제 목 </td>
				<td> <input type="text" name="title" placeholder="제목을 입력하세요." value="<%=rs.getString("title")%>"> </td>
			</tr>
			<tr>
				<td> 이 름 </td>
				<td> <input type="text" name="writer" placeholder="이름을 입력하세요." value="<%=rs.getString("writer") %>"> </td>
			</tr>
			<tr>
				<td> 내 용 </td>
				<td> <textarea cols="30" rows="5" name="content"><%=rs.getString("content")%></textarea> </td>
			</tr>
			<tr>
				<td> 비밀번호 </td>
				<td> <input type="password" name="pwd" placeholder="비밀번호를 입력하세요." required> </td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="수정하기" >
					<a href="list.jsp"><input type="button" value="목록" ></a>
				</td>
			</tr>
		</form>
		
	</table>
	
</body>
</html>
<%
	rs.close();
	pstmt.close();
	conn.close();
%>