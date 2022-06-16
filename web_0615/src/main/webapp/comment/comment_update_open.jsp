<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	Class.forName("com.mysql.jdbc.Driver");
	String db = "jdbc:mysql://localhost:3306/board_test";
	Connection conn = DriverManager.getConnection(db, "root", "5032");
	
	String id = request.getParameter("id");
	
	String sql = "select * from comment where id=?";
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, id);
	
	ResultSet rs = pstmt.executeQuery();
	rs.next();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>0616/comment_update</title>
</head>
<body>
	<table width="500" border="0" align="center">
		<caption><h2>댓글 수정</h2></caption>
		<tr>
		<form method="post" action="comment_update_open_ok.jsp">
			<input type="hidden" name="id" value="<%=rs.getString("id")%>">	<!-- comment의 id -->
			<td> <input type="text" name="name" placeholder="이름" value="<%=rs.getString("name")%>"> </td>
			<td> <textarea cols="30" rows="2" name="content" placeholder="내용을 입력하세요."><%=rs.getString("content") %></textarea> </td>
			<td> <input type="password" name="pwd" placeholder="비밀번호"> </td>
			<td> <input type="submit" value="댓글수정"> </td>
		</form>
		</tr>
	</table>
	
</body>
</html>
<%
	rs.close(); 
	pstmt.close();
	conn.close();
%>