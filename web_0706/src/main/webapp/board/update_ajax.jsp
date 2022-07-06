<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="board.BoardDao" %>
<%@ page import="java.sql.ResultSet" %>
<%
	BoardDao dao = new BoardDao();
	
	int id = Integer.parseInt(request.getParameter("id"));
	ResultSet rs = dao.content(id);
	rs.next();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>update</title>
<script>
	function pwdCheck() {
		var id = <%=rs.getString("id")%>;
		var pwd = document.frm.pwd.value;
		var url = "pwdchk.jsp?id="+id+"&pwd="+pwd;
				
		var chk = new XMLHttpRequest();
		chk.open("get", url);
		chk.send();
		
		chk.onreadystatechange = function() {
			if(chk.readyState == 4) {
				console.log(chk.responseText.trim());
				if(chk.responseText.trim() == 1) {
					document.frm.title.disabled = false;
					document.frm.name.disabled = false;
					document.frm.content.disabled = false;
					document.frm.submit.type = "submit";
					document.getElementById('pwdinput').style.display = "none";
				}
				else {
					console.log("something wrong");
				}
			}
		}
	
	}
</script>
</head>
<body>	<!-- 0706/board/update.jsp -->
	
	<form name="frm" method="post" action="update_ok.jsp">
	<table width="440" align="center" border="1">
		<caption><h2>게시글 상세</h2></caption>
		<input type="hidden" name="id" value="<%=rs.getInt("id") %>">
		<tr id="pwdinput">
			<td> 비밀번호 </td>
			<td>
				<input type="password" name="pwd" >
				<input type="button" value="비밀번호 확인" onclick="pwdCheck()">
			</td>
		</tr>
		<tr>
			<td> 제 목 </td>
			<td> <input type="text" name="title" value="<%=rs.getString("title") %>" disabled> </td>
		</tr>
		<tr>
			<td> 작성자 </td>
			<td> <input type="text" name="name" value="<%=rs.getString("name") %>" disabled> </td>
		</tr>
		<tr>
			<td> 내 용 </td>
			<td> <textarea cols="42" rows="10" name="content" disabled><%=rs.getString("content") %></textarea> </td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="hidden" name="submit" value="수정하기"> <p>
				<a href="content.jsp?id=<%=rs.getInt("id")%>"><input type="button" value="뒤로가기"></a>
				<a href="list.jsp"><input type="button" value="목록"></a>
			</td>
		</tr>
	</table>
	</form>
	
</body>
</html>