<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="upload.UploadDao" %>
<%@ page import="java.sql.ResultSet" %>
<%
	UploadDao dao = new UploadDao();
	
	ResultSet rs = dao.view(request, response);
	rs.next();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>view</title>
</head>
<body>
	
	<table width="600" border="1">
		<caption>
			<h3><%=rs.getString("title") %></h3>
		</caption>
		<tr>
			<td> 작성자 </td>
			<td> <%=rs.getString("name") %> </td>
		</tr>
		<tr>
			<td> 내 용 </td>
			<td> <%=rs.getString("content").replace("\r\n", "<br>") %> </td>
		</tr>
		<tr>
			<td> 사 진 </td>
			<td> <img src="img/<%=rs.getString("fname") %>" width="480"> </td>
		</tr>
		<tr>
			<td> 파일명 </td>
			<td> <%=rs.getString("fname") %> </td>
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
				<input type="button" value="수정" onclick="javascript:location='update.jsp?id=<%=rs.getString("id")%>'">
				<input type="button" value="목록" onclick="javascript:location='list.jsp'">
				<input type="button" value="삭제" onclick="javascript:location='delete.jsp?id=<%=rs.getString("id")%>&fname=<%=rs.getString("fname")%>'">
			</td>
		</tr>
	</table>
	
</body>
</html>