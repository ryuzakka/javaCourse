<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="score.Sungjuk_Dao" %>
<%@ page import="java.sql.ResultSet" %>
<%
	Sungjuk_Dao dao = new Sungjuk_Dao();
	ResultSet rs = dao.sort_sum();
	int rank = 0;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<table width="300" border="1">
		<caption>
			<h1>성적 순위표</h1>
			<a href="list.jsp">관리페이지로 돌아가기</a>
		</caption>
		<tr>
			<td> 순 위 </td>
			<td> 이 름 </td>
			<td> 총 점 </td>
		</tr>
	<% while(rs.next()) { %>
	<%	rank++;	%>
		<tr>
			<td> <%=rank%> 위 </td>
			<td> <%=rs.getString("name") %> </td>
			<td> <%=rs.getString("sum") %> </td>
		</tr>
	<% } %>
	</table>
	
</body>
</html>