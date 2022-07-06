<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="board.BoardDao" %>
<%@ page import="java.sql.ResultSet" %>
<%
	int id = Integer.parseInt(request.getParameter("id"));

	BoardDao dao = new BoardDao();
	
	ResultSet rs = dao.content(id);
	rs.next();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>content</title>
<style>
	#pwdinput {
		display:none;
	}
</style>
<script>
	function pwdopen() {
		document.getElementById('pwdinput').style.display = "table-row";
	}
</script>
</head>
<body>	<!-- 0706/board/content -->
	
	<table width="380" align="center" border="1">
		<caption><h2>게시글 상세</h2></caption>
		<tr>
			<td> 제 목 </td>
			<td> <%=rs.getString("title") %> </td>
		</tr>
		<tr>
			<td> 작성자 </td>
			<td> <%=rs.getString("name") %> </td>
		</tr>
		<tr>
			<td> 내 용 </td>
			<td> <%=rs.getString("content").replace("\r\n" , "<br>") %> </td>
		</tr>
		<tr>
			<td> 조회수 </td>
			<td> <%=rs.getString("readnum") %> </td>
		</tr>
		<tr>
			<td> 작성일 </td>
			<td> <%=rs.getString("writeday") %> </td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<a href="update.jsp?id=<%=rs.getInt("id")%>"><input type="button" value="수정(form)"></a>
				<a href="update_ajax.jsp?id=<%=rs.getInt("id")%>"><input type="button" value="수정(ajax)"></a>
				<input type="button" value="삭제" onclick="pwdopen()"> <br>
				<a href="list.jsp">목록으로</a>
				
				<div id="pwdinput">
				<form name="pwdinpt" method="post" action="delete.jsp">
					<input type="hidden" name="id" value="<%=rs.getInt("id")%>">
					<input type="password" name="pwd" placeholder="비밀번호" size="6">
					<input type="submit" value="삭제">
				</form>
				</div>
			</td>
		</tr>
	</table>
	
</body>
</html>
<%
	rs.close();
	dao.close();
%>