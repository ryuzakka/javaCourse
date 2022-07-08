<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="upload.UploadDao" %>
<%@ page import="java.sql.ResultSet" %>
<% 
	UploadDao dao = new UploadDao();

	ResultSet rs = dao.list();
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>list</title>
</head>
<body>
	
	<table width="500" border="1">
		<caption>
			<h2>여행 후기 게시판</h2>
			<input type="button" value="글쓰기" onclick="javascript:location='write.jsp'">
		</caption>
		
		<tr>
			<td> 썸네일 </td>
			<td> 제 목 </td>
			<td> 작성자 </td>
			<td> 작성일 </td>
		</tr>
		
	<%	while(rs.next()) { %>
		<tr onclick="javascript:location='viewcnt.jsp?id=<%=rs.getString("id")%>'">
			<td width="70"> <img src="./img/<%=rs.getString("fname") %>" height="100"> </td>
			<td> <%=rs.getString("title") %> </td>
			<td> <%=rs.getString("name") %> </td>
			<td> <%=rs.getString("writeday") %> </td>
		</tr>
	<%	} %>
	
	</table>
	
	
</body>
</html>

<% dao.close(); %>