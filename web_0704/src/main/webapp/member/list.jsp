<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>list</title>
</head>
<body>	<!-- 0704/list.jsp -->
	<!-- member테이블의 내용을 select해서 전부 출력 -->
<%@ page import="member.Member_Dao" %>
<%@ page import="java.sql.ResultSet" %>
<%
	Member_Dao dao = new Member_Dao();
	
	ResultSet rs = dao.select();
%>	
	<table width="350" border="1" align="center">
		<caption>
			<h1>회원 명단</h1>
			<a href="member_input.jsp" align="left"><input type="button" value="회원추가"></a>
		</caption>
		<tr>
			<td> 이름 </td>
			<td> 나이 </td>
			<td> 수정 </td>
			<td> 삭제 </td>
		</tr>
<%	while(rs.next()) { %>
		<tr>
			<td><%=rs.getString("name") %> </td>
			<td><%=rs.getString("age") %> </td>
			<td><a href="update.jsp?id=<%=rs.getString("id")%>"><input type="button" value="수정"></a> </td>
			<td><a href="delete.jsp?id=<%=rs.getString("id")%>"><input type="button" value="삭제"></a> </td>
		</tr>
<%	} %>
	</table>
</body>
</html>
<%
	rs.close();
	dao.close();
%>