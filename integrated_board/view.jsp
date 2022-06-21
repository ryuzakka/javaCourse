<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	Class.forName("com.mysql.jdbc.Driver");
	String db = "jdbc:mysql://localhost:3306/ezen";
	Connection conn = DriverManager.getConnection(db, "root", "dndb5032");
	
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	
	String sql = "select * from board2 where id=?";
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, id);
	
	ResultSet rs = pstmt.executeQuery();
	rs.next();
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>integrated_board/view</title>
	<style>
		#delpwd { display:none; }
		#cmtDelBtn { 
			position:absolute;
			display:none;
			width:160px; 
			height:30px;
			padding-top:8px;
			padding-left:10px;
			background:#eeeeee; 
			opacity:.8;
		}
	</style>
	<script>
		/* 게시글 수정 */
		function deleteBtn() {
			document.getElementById("delpwd").style.display = "table-row";
		}
		/* 댓글 수정,삭제,작성 */
		function comUpd(id, writer, content) {
			document.comform.id.value = id;
			document.comform.writer.value = writer;
			document.comform.content.value = content;
			document.comform.submit.value = "댓글수정";
		}
		function comDel(id) {
			document.comDelForm.id.value = id;

			var pwdBox = document.getElementById('cmtDelBtn');
			pwdBox.style.display = "table";
			pwdBox.style.left = (event.pageX+30)+"px";
			pwdBox.style.top = (event.pageY-15)+"px";
		}
		function comWrt() {
			document.comform.id.value = "";
			document.comform.writer.value = "";
			document.comform.content.value = "";
			document.comform.pwd.value = "";
			document.comform.submit.value = "댓글작성";
		}
		
	</script>
</head>
<body>	<!-- integrated_board/view -->

	<table width="400" align="center" border="1">
		<caption><h2>게시판 글수정</h2></caption>
		<tr>
			<td> 비밀글 </td>
			<%
				String str ="";
				if(rs.getInt("secret") == 0)
					str = "일반글";
				else
					str = "비밀글";
			%>
			<td>
				<%=str%>
			</td>
		</tr>
		<tr>
			<td> 제 목 </td>
			<td> <%=rs.getString("title")%> </td>
		</tr>
		<tr>
			<td> 이 름 </td>
			<td> <%=rs.getString("writer") %> </td>
		</tr>
		<tr>
			<td> 내 용 </td>
			<td> <%=rs.getString("content") %> </td>
		</tr>
		<tr>
			<td> 조회수 </td>
			<td> <%=rs.getInt("viewcnt") %> </td>
		</tr>
		<tr>
			<td> 작성일 </td>
			<td> <%=rs.getString("writeday") %> </td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<a href="update.jsp?id=<%=rs.getInt("id")%>"><input type="button" value="수정" ></a>
				<a href="list.jsp"><input type="button" value="목록" ></a>
				<input type="button" value="삭제" onclick="deleteBtn()">
				<% if(rs.getInt("secret") != 1) { %>
				<a href="rewrite.jsp?grp=<%=rs.getInt("grp")%>&depth=<%=rs.getInt("depth")%>&seq=<%=rs.getInt("seq")%>"><input type="button" value="답글"></a>
				<% } %>
			</td>
		</tr>
		
		<!-- 게시글 삭제 : 비밀번호 입력 폼 -->
		<tr id="delpwd">
			<td colspan="2" align="center">
				<form method="post" action="delete.jsp">
					<input type="hidden" name="id" value="<%=rs.getInt("id") %>" >
					<input type="password" name="pwd" size="4">
					<input type="submit" value="삭제하기" >
				</form>
			</td>
		</tr>
				
	</table>
	<p><hr><p>
	
	<!-- 댓글 입력폼 -->
	<div align="center">
		<span> 댓글 입력창 </span>
		<form name="comform" method="post" action="comment_proc.jsp">
			<input type="hidden" name="bid" value="<%=id%>">
			<input type="hidden" name="id">
			<input type="text" name="writer" placeholder="이름" required>
			<input type="text" name="content" placeholder="내용">
			<input type="password" name="pwd" placeholder="비밀번호" size="4">
			<input type="submit" name="submit" value="댓글작성">
		</form>
	</div>
	<p>
	
	<!-- 댓글 목록 조회 -->
	<% 
		sql = "select * from comment1 where bid=? order by id desc";
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		
		ResultSet rs2 = pstmt.executeQuery();
	%>
	
	<!-- 댓글 목록 출력 -->
	<table width="500" align="center" border="1">
		<tr align="center">
			<td> 이 름 </td>
			<td> 내 용 </td>
			<td> 작성일 </td>
		</tr>
		<% while(rs2.next()) { %>
		<tr>
			<td> <%=rs2.getString("writer")%> </td>
			<td onclick="comWrt()"> <%=rs2.getString("content")%> </td>
			<td> <%=rs2.getString("writeday")%> </td>
			<td>
				<input type="button" value="수정" onclick="comUpd(<%=rs2.getInt("id")%>,'<%=rs2.getString("writer")%>','<%=rs2.getString("content")%>')">
				<input type="button" value="삭제" onclick="comDel(<%=rs2.getInt("id")%>)">
			</td>
		</tr>
		<% } %>
	</table>
	
	<div id="cmtDelBtn">
		<form name="comDelForm" method="post" action="comment_delete.jsp">
			<input type="hidden" name="id" >
			<input type="hidden" name="bid" value="<%=id%>">
			<input type="password" name="pwd" size="4">
			<input type="submit" value="삭제하기">
		</form>
	</div>
	
</body>
</html>

<%
	rs.close();
	rs2.close();
	pstmt.close();
	conn.close();
%>