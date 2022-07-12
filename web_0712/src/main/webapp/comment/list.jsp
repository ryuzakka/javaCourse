<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="comment.BoardDao" %>
<%
	BoardDao dao = new BoardDao();
	ResultSet rs = dao.list();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>board2/list</title>
<style>
	table {
		border-spacing:0; /* 셀과 셀의 간격 */
	}
	tr:first-child td:first-child {
		border:none;
	}
	tr:nth-child(2) td {
		border-top:2px solid hotpink;
	}
	td {
		border-top:1px solid hotpink;
		height:34px;
	}
	tr:last-child td {
		border-bottom:2px solid hotpink;
	}
	#secretchk { 
		visibility:hidden;
		position:absolute;
	}
	#secretchk div {
		border:1 solid grey;
		background:lightgrey;
		width:240px;
		height:40px;
		text-align:center;
		padding-top:10px;
		opacity:.8;
	}
	span { text-decoration:underline; color:blue; }
</style>
<script>
	function view(id) {
		document.getElementById("secretchk").pwd.value = "";
		document.getElementById("secretchk").style.visibility = "visible";
		document.getElementById("secretchk").style.left = (event.pageX+10)+"px";
		document.getElementById("secretchk").style.top = event.pageY+"px";
		document.getElementById("secretchk").id.value = id;
	}
</script>
</head>
<body>
	<form id="secretchk" method="post" action="secret_check.jsp">
		<div>
			<input type="hidden" name="id">
			<input type="password" name="pwd" size="17" placeholder="비밀번호를 입력하세요." >
			<input type="submit" value="확인">
		</div>
	</form>
	<table width="600" align="center">
		<caption><h2>게시판 목록</h2></caption>
		<tr>
			<td colspan="4" align="left"><a href="write.jsp"><input type="button" value="글쓰기"></a></td>
		</tr>
		<tr align="center">
			<td width="300"> 제 목 </td>
			<td width="100"> 이 름 </td>
			<td width="100"> 조회수 </td>
			<td width="100"> 작성일 </td>
		</tr>
	<% 
	int i = 1;
	String bgcolor;
	while(rs.next()) {
		if(i%2 != 0) {
			bgcolor = "style='background:#eeeeee'";
		}
		else {
			bgcolor = "style='background:white'";
		}
	%>
		<tr <%=bgcolor%>>
		<% if(rs.getInt("secret") == 0) { %>
			<td> <a href="viewcnt.jsp?id=<%=rs.getString("id") %>"> <%=rs.getString("title") %> </a> </td>
		<% }
		else { %>
			<!-- 클릭하면 비밀번호 입력창이 나오게 -->
			<td> <span onclick="view(<%=rs.getString("id") %>)"><%=rs.getString("title") %></span> </td>
		<% } %>
			<td align="center"> <%=rs.getString("writer") %> </td>
			<td align="center"> <%=rs.getString("viewcnt") %> </td>
			<td align="center"> <%=rs.getString("writeday") %> </td>
		</tr>
	<% i++;
	} %>
	</table>
</body>
</html>
<%
	rs.close();
	dao.close();
%>