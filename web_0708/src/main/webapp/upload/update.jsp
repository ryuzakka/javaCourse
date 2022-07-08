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
<title>update</title>
</head>
<body>
	
	<form method="post" action="update_ok.jsp" enctype="multipart/form-data">
	<table width="600" border="1">
		<caption>
			<h3>게시글 수정</h3>
		</caption>
		<input type="hidden" name="id" value="<%=rs.getString("id") %>">
		<tr>
			<td> 제 목 </td>
			<td> <input type="text" name="title" value="<%=rs.getString("title") %>"> </td>
		</tr>
		<tr>
			<td> 작성자 </td>
			<td> <input type="text" name="name" value="<%=rs.getString("name") %>"> </td>
		</tr>
		<tr>
			<td> 내 용 </td>
			<td> <textarea cols="42" rows="5" name="content"><%=rs.getString("content") %></textarea> </td>
		</tr>
		<tr>
			<td> 파일 </td>
			<td> 
				<input type="hidden" name="fname" value="<%=rs.getString("fname") %>">
				<input type="file" name="newfname">
				<% if(rs.getString("fname") != null) { %>
				<br> 파일명 : <%=rs.getString("fname") %>
				<% } %>
			</td>
		</tr>
		
		<tr>
			<td colspan="2" align="center">
				<input type="submit" value="수정완료">
				<input type="button" value="목록" onclick="javascript:location='list.jsp'">
			</td>
		</tr>
	</table>
	</form>
	
</body>
</html>
<% 
	rs.close();
	dao.close();
%>