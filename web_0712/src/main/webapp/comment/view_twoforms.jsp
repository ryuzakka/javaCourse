<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="comment.BoardDao" %>
<% 
	String id = request.getParameter("id"); 
	BoardDao dao = new BoardDao();
	ResultSet rs = dao.content(request, response);
	ResultSet rs2 = dao.commentList(id);
	rs.next();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board2/view</title>
<style>
	#pwdchk { display:none; }
	#uppwdchk { display:none; }
	#delpwdchk { display:none; }
	#com_del { 
		display:none;
		position:absolute; 
	}
	#upform { visibility:hidden; }
</style>
<script>
	
	/* 게시글의 수정버튼 */
	function updBtn() {		
	<% if(rs.getInt("secret") == 1) { %>	// 비밀글 : 이미 비밀번호를 입력하고 들어옴
		location = "update.jsp?id=<%=rs.getString("id")%>";
	<% } else { 	// 일반글 : 비밀번호 입력이 필요함
	%>
		document.getElementById("pwdchk").style.display = "table-row";
		document.chk.action = "update_check.jsp";
		document.chk.submt.value = "수정";
	<% } %>
	}
	function delBtn() {		/* 게시글의 삭제버튼 */
		document.getElementById("pwdchk").style.display = "table-row";
		document.chk.action = "delete_check.jsp";
		document.chk.submt.value = "삭제";
	}
	
	function upform_view(id, name, content) {	/* 댓글 수정양식 노출 */
		document.upform.style.visibility = "visible";
		document.upform.id.value = id;
		document.upform.name.value = name;
		document.upform.content.value = content;
	}
	function commentDel(id) {	/* 댓글 삭제하기 */
		document.getElementById("com_del").pwd.value = "";
		document.getElementById("com_del").style.display = "inline-block";
		document.getElementById("com_del").id.value = id;
		document.getElementById("com_del").style.left = event.pageX+"px";
		document.getElementById("com_del").style.top = event.pageY+"px";
	}
	
	/* 댓글 입력/수정폼 공용으로 사용하기 */
	function comment_updateForm(id, name, content) {
		var form = document.getElementById('commentForm');
		form.action = "comment_update_layer_ok.jsp";
		form.id.value = id;
		form.name.value = name;
		console.log(content);
		form.content.value = content;
		form.submit.value = "댓글수정";
	}
	function comment_insertForm() {
		var form = document.getElementById('commentForm');
		form.action = "comment_write_ok.jsp";
		form.id.value = "";
		form.name.value = "";
		form.content.value = "";
		form.submit.value = "댓글달기";
	}
	
</script>
</head>
<body>
	<table width="500" border="1" align="center">
		<caption><h2>게시판 글보기</h2></caption>
		<tr>
			<td> 제 목 </td>
			<td> <%=rs.getString("title") %> </td>
		</tr>
		<tr>
			<td> 작성자 </td>
			<td> <%=rs.getString("writer") %> </td>
		</tr>
		<tr height="200">
			<td> 내 용 </td>
			<td> <%=rs.getString("content").replace("\r\n", "<br>") %> </td>
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
			<td> 지역 </td>
			<%
				String areaName="";
				switch(rs.getInt("area")) {
					case 0: areaName="서울"; break;
					case 1: areaName="경기"; break;
					case 2: areaName="강원"; break;
					case 3: areaName="충청"; break;
					case 4: areaName="전라"; break;
				}
			%>
			<td> <%=areaName %> </td>
			</td>
		</tr>
		<tr>
			<td> 비밀글 </td>
			<td>
			<% if(rs.getInt("secret") == 1) { %>
				<span>비밀글 입니다.</span>
			<% } else { %>
				<span>비밀글이 아닙니다.</span>
			<% } %>
			</td>
		</tr>
		<tr>	<!-- 게시글 수정/목록/삭제 버튼 -->
			<td colspan="2" align="center">
				<input type="button" onclick="updBtn()" value="수정">
				<a href="list.jsp"> <input type="button" value="목록"></a>
				<input type="button" onclick="delBtn()" value="삭제">
			</td>
		</tr>	<!-- 게시글 수정/삭제를 위한 비밀번호 입력칸 -->
		<tr id="pwdchk">
			<td colspan="2" align="center">
				<form name="chk" method="post" action="">
					<input type="hidden" name="id" value="<%=rs.getString("id") %>">
					<input type="password" name="pwd" placeholder="비밀번호를 입력하세요.">
					<input type="submit" name="submt" value="확인">
				</form>
			</td>
		</tr>
	</table>
	
	<p><hr><p>
	
	
	<!-- 댓글 입력폼 : 해당 폼을 수정폼으로도 활용 -->
	<table width="500" border="0" align="center">
		<tr>
			<form id="commentForm" method="post" action="comment_write_ok.jsp">
				<input type="hidden" name="id" value="">	<!-- 댓글의 id -->
				<input type="hidden" name="bid" value="<%=id%>">	<!-- board2의 id -->
				<td> <input type="text" name="name" placeholder="이름"> </td>
				<td> <input type="text" name="content" placeholder="내용을 입력하세요."> </td>
				<td> <input type="password" name="pwd" placeholder="비밀번호"> </td>
				<td> <input type="submit" name="submit" value="댓글달기"> </td>
			</form>
		</tr>
	</table>
	<p>
	
	<%		
		
	%>
	
	<!-- 댓글 표시 -->
	<table width="500" border="1" align="center">
		<caption><h3>댓글</h3></caption>
		<tr>
			<td> 이 름 </td>
			<td> 내 용 </td>
			<td> 작성일 </td>
			<td> 수정/삭제 </td>
		</tr>
	<%	while(rs2.next()) {	%>  <!-- 댓글 리스트 출력 -->
		<tr>
			<td><%=rs2.getString("name")%></td>
			<td onclick="comment_insertForm()"><%=rs2.getString("content").replace("\r\n", "<br>")%></td>
			<td><%=rs2.getString("writeday")%></td>
			<td>
				<input type="button" value="수정" onclick="comment_updateForm('<%=rs2.getString("id")%>','<%=rs2.getString("name")%>','<%=rs2.getString("content").replace("\r\n", " ")%>')">
				<input type="button" value="삭제" onclick="commentDel(<%=rs2.getString("id")%>)">
			</td>
		</tr>
	<%	} %>
	</table>
	
	<!-- 댓글 수정 폼 -->
	<form name="upform" id="upform" method="post" action="comment_update_layer_ok.jsp">
		<table width="500" border="0" align="center">
			<tr>
				<input type="hidden" name="id" value="">
				<input type="hidden" name="bid" value="<%=id%>">
				<td> <input type="text" name="name" placeholder="이름" value=""> </td>
				<td> <textarea cols="30" rows="2" name="content" placeholder="내용을 입력하세요."></textarea> </td>
				<td> <input type="password" name="pwd" placeholder="비밀번호"> </td>
				<td> <input type="submit" value="댓글수정"> </td>
			</tr>
		</table>
	</form>
	
	<!-- 댓글 삭제 폼 -->
	<form id="com_del" method="post" action="comment_delete.jsp">
		<input type="hidden" name="id">
		<input type="hidden" name="bid" value="<%=rs.getString("id")%>">
		<input type="password" name="pwd" placeholder="비밀번호" size="5">
		<input type="submit" value="삭제하기">
	</form>
</body>

</html>
<%
	rs.close();
	rs2.close();
	dao.close();
%>