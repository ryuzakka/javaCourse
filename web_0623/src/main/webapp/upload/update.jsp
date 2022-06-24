<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	Class.forName("com.mysql.jdbc.Driver");
	String db = "jdbc:mysql://localhost:3306/board_test";
	Connection conn = DriverManager.getConnection(db, "root", "5032");
	
	String id = request.getParameter("id");
	
	String sql = "select * from upload where id=?";
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, id);
	
	ResultSet rs = pstmt.executeQuery();
	rs.next();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>0623upload/update</title>
</head>
<body>	<!-- 0623upload/update.jsp -->

	<form method="post" action="update_ok.jsp" enctype="multipart/form-data">
		<input type="hidden" name="id" value="<%=rs.getInt("id")%>">
		<table width="500" align="center">
			<caption><h2>여행 후기 작성</h2></caption>
			<tr>
				<td> 제 목 </td>
				<td> <input type="text" name="title" value="<%=rs.getString("title")%>"> </td>
			</tr>
			<tr>
				<td> 이 름 </td>
				<td> <input type="text" name="name" size="10" value="<%=rs.getString("name")%>"> </td>
			</tr>
			<tr>
				<td> 내 용 </td>
				<td> <textarea cols="40" rows="6" name="content"><%=rs.getString("content") %></textarea> </td>
			</tr>
			<tr>
				<td> 사 진 </td>
				<td>
					<input type="file" name="fname">
					<%-- <img src="img/<%=rs.getString("fname")%>" width="300"> --%>
					<input type="hidden" name="fname2" value="<%=rs.getString("fname")%>">
				</td>
			</tr>
			
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="등록">
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