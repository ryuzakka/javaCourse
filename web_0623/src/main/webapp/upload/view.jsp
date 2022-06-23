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
<title>0623upload/view</title>
</head>
<body>	<!-- 0623upload/view.jsp -->
	
	<table width="600" align="center" border="1">
		<tr>
			<td> 제 목 </td>
			<td> <%=rs.getString("title") %> </td>
		</tr>
		<tr>
			<td> 이 름 </td>
			<td> <%=rs.getString("name") %> </td>
		</tr>
		<tr>
			<td> 내 용 </td>
			<td> <%=rs.getString("content").replace("\r\n", "<br>") %> </td>
		</tr>
		<tr>
			<td> 사 진 </td>
			<td> <img src="./img/<%=rs.getString("fname")%>" width="500"> </td>
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
				<a href="update.jsp?id=<%=rs.getInt("id")%>"><input type="button" value="수정"></a>
				<a href="list.jsp"><input type="button" value="목록"></a>
				<a href="delete.jsp?id=<%=rs.getInt("id")%>"><input type="button" value="삭제"></a>
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