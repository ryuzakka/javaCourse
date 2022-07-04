<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="web_0704.DB_Access" %>
<%@ page import="java.sql.ResultSet" %>
<%
	DB_Access xs = new DB_Access();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<table width="300" border="1">
		<tr>
			<td>이름</td><td>나이</td>
		</tr>
<%
	ResultSet rs = xs.select("test");
	while(rs.next()) {
%>
		<tr>
			<td><%=rs.getString("name")%></td>
			<td><%=rs.getInt("age")%></td>
		</tr>
<%	} %>
	</table>
	
</body>
</html>

<%
	rs.close();
	xs.conn.close();
%>