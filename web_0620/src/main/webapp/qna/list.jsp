<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	Class.forName("com.mysql.jdbc.Driver");
	String db = "jdbc:mysql://localhost:3306/board_test";
	Connection conn = DriverManager.getConnection(db, "root", "5032");
	
	String sql = "select * from qna order by grp desc, seq asc";
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	
	ResultSet rs = pstmt.executeQuery();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>0620qna/list</title>
</head>
<body>	<!-- 0620qna/list -->
	
	<table width="800" align="center" border="0">
		<caption><h2>QnA 게시판 목록</h2></caption>
		<tr align="center">
			<td> 제 목 </td>
			<td> 이 름 </td>
			<td> 조회수 </td>
			<td> 작성일 </td>
			<td> grp </td>
			<td> depth </td>
			<td> seq </td>
		</tr>
	<% 
	while(rs.next()) {
		String str = "";
		if(rs.getInt("depth") != 1) {
			for(int i=1; i<rs.getInt("depth"); i++) {
				str += "&nbsp;&nbsp;";				
			}
			str += "└ ";
		}
	%>
		<tr>
			<td><%=str %><a href="viewcnt.jsp?id=<%=rs.getInt("id")%>"><%=rs.getString("title") %></a></td>
			<td> <%=rs.getString("name") %> </td>
			<td> <%=rs.getString("viewcnt") %> </td>
			<td> <%=rs.getString("writeday") %> </td>
			<td> <%=rs.getInt("grp") %> </td>
			<td> <%=rs.getInt("depth") %> </td>
			<td> <%=rs.getInt("seq") %> </td>
		</tr>
	<% } %>
		<tr>
			<td colspan="4"> <a href="write.jsp"><input type="button" value="질문하기" ></a> </td>
		</tr>
	</table>
	
</body>
</html>

<%
	rs.close();
	pstmt.close();
	conn.close();
%>