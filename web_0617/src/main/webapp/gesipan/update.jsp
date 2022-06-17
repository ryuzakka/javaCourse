<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
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
<title>gesipan/update</title>
</head>
<body>	<!-- gesipan/update -->

	<form method="post" action="update_ok.jsp">
		<table width="600" align="center" border="1">
			<caption><h2>게시판 글수정</h2></caption>
			<input type="hidden" name="id" value="<%=id%>" >
			<tr>
				<td> 제 목 </td>
				<td> <input type="text" name="title" value="<%=rs.getString("title")%>"> </td>
			</tr>
			<tr>
				<td> 작성자 </td>
				<td> <input type="text" name="writer" value="<%=rs.getString("writer") %>" required > </td>
			</tr>
			<tr>
				<td> 이메일 </td>
				<td> <input type="text" name="email" value="<%=rs.getString("email") %>" required > </td>
			</tr>
			<tr>
				<td> 내 용 </td>
				<td> <textarea cols="50" rows="8" name="content"><%=rs.getString("content") %></textarea> </td>
			</tr>
			<tr>
				<td> 비밀번호 </td>
				<td> <input type="password" name="pwd"> </td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="수정" >
					<a href="content.jsp?id=<%=id%>"><input type="button" value="뒤로" ></a>
					<a href="list.jsp"><input type="button" value="목록" ></a>
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