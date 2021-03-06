<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<% 
	Class.forName("com.mysql.jdbc.Driver");
	String db = "jdbc:mysql://localhost:3306/board_test";
	Connection conn = DriverManager.getConnection(db, "root", "5032");
	
	String id = request.getParameter("id");
	
	String sql = "SELECT * FROM board2 WHERE id=?";
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, id);
	
	ResultSet rs = pstmt.executeQuery();
	rs.next();
	
	int num = 0;
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
	function upform_view(id, name, content) {
		document.upform.style.visibility = "visible";
		document.upform.id.value = id;
		document.upform.name.value = name;
		document.upform.content.value = content;
	}

	function updBtn() {		/* 게시글 수정하기 */
	<% if(rs.getInt("secret") == 1) { %>
		location = "update.jsp?id=<%=rs.getString("id")%>";
	<% } else { 
	%>
		document.getElementById("pwdchk").style.display = "table-row";
		document.chk.action = "update_check.jsp";
		document.chk.submt.value = "수정";
	<% } %>
	}
	function delBtn() {		/* 게시글 삭제하기 */
		document.getElementById("pwdchk").style.display = "table-row";
		document.chk.action = "delete_check.jsp";
		document.chk.submt.value = "삭제";
	}
	function commentDel(id) {	/* 댓글 삭제하기 */
		document.getElementById("com_del").pwd.value = "";
		document.getElementById("com_del").style.display = "inline-block";
		document.getElementById("com_del").id.value = id;
		document.getElementById("com_del").style.left = event.pageX+"px";
		document.getElementById("com_del").style.top = event.pageY+"px";
	}
	/*  
	function winOpen(id) {	// 댓글 수정하기 : 새창에서 수정하기
		
		let son = open("comment_update_open.jsp?id="+id, "", "width=800,height=250,left=100,top=100");
		son.moveTo(500,500);
	}
	*/
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
	
	<!-- 댓글 입력폼 -->
	<table width="500" border="0" align="center">
		<tr>
		<form method="post" action="comment_write_ok.jsp">
			<input type="hidden" name="bid" value="<%=id%>">	<!-- board2의 id -->
			<td> <input type="text" name="name" placeholder="이름"> </td>
			<td> <textarea cols="30" rows="2" name="content" placeholder="내용을 입력하세요."></textarea> </td>
			<td> <input type="password" name="pwd" placeholder="비밀번호"> </td>
			<td> <input type="submit" value="댓글달기"> </td>
		</form>
		</tr>
	</table>
	
	<p><hr><p>
	<%
		String sql2 = "select * from comment where bid=?";
		
		PreparedStatement pstmt2 = conn.prepareStatement(sql2);
		pstmt2.setString(1, id);
		
		ResultSet rs2 = pstmt2.executeQuery();
		
	%>
	
	<!-- 댓글 -->
	<table width="500" border="1" align="center">
		<caption>댓글</caption>
		<tr>
			<td> 이 름 </td>
			<td> 내 용 </td>
			<td> 작성일 </td>
			<td> 수정/삭제 </td>
		</tr>
	<%	while(rs2.next()) {	// 댓글 리스트 출력 %>
		<tr>
			<td><%=rs2.getString("name")%></td>
			<td><%=rs2.getString("content").replace("\r\n", "<br>")%></td>
			<td><%=rs2.getString("writeday")%></td>
			<td>
				<input type="button" value="수정" onclick="upform_view('<%=rs2.getString("id")%>','<%=rs2.getString("name")%>','<%=rs2.getString("content")%>')">
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
	pstmt.close();
	rs2.close();
	pstmt2.close();
	conn.close();
%>