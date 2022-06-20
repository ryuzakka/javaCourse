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
<title>0620qna/update</title>
</head>
<body>	<!-- 0620qna/update -->
	
	<form method="post" action="update_ok.jsp">
	<table width="400" align="center">
		<caption><h2>QnA 게시글 수정</h2></caption>
		
		<input type="hidden" name="id" value="<%=id%>">
		
		<tr>
			<td align="center"> 제 목 </td>
			<td> <input type="text" name="title" size="40" value="<%=rs.getString("title")%>"> </td>
		</tr>
		<tr>
			<td align="center"> 이 름 </td>
			<td> <input type="text" name="name" size="10" value="<%=rs.getString("name")%>"> </td>
		</tr>
		<tr>
			<td align="center"> 내 용 </td>
			<td> <textarea cols="42" rows="8" name="content"><%=rs.getString("content") %></textarea> </td>
		</tr>
		<tr>
			<td align="center"> 비밀번호 </td>
			<td> <input type="password" name="pwd" size="6"> </td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="submit" value="작성">
				<a href="list.jsp"><input type="button" value="목록"></a>
			</td>
		</tr>
	</table>
	</form>
	
</body>
</html>
<%
	rs.close();
	pstmt.close();
	conn.close();
%>