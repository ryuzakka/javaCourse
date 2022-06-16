<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 해당id값의 게시글 정보 조회 -->
<%@ page import="java.sql.*" %>
<%
	Class.forName("com.mysql.jdbc.Driver");
	String db = "jdbc:mysql://localhost:3306/ezen";
	Connection conn = DriverManager.getConnection(db, "root", "dndb5032");
	
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
	<title>board2_0616/view</title>
	<style>
		#pwdCheck { display:none; }
	</style>
	<script>
		function delBtn(id) {
			document.getElementById('pwdCheck').style.display = "table-row";
			var form = document.getElementById('pwdForm');
			form.action = "delete_proc.jsp";
			form.id.value = id;
			form.submit.value = "삭제진행";
		}
		function updBtn(id) {
			document.getElementById('pwdCheck').style.display = "table-row";
			var form = document.getElementById('pwdForm');
			form.action = "update.jsp";
			form.id.value = id;
			form.submit.value = "수정진행";
		}
		function listBtn() {
			location = "list.jsp";
		}
	</script>
</head>
<body>	<!-- board2_0616/view -->

	<!-- 게시글 노출 양식 -->
	<table width="500" align="center" border="1">
		<caption><h2> 게시판 상세글 </h2></caption>
		
		<tr>
			<td> 제 목 </td>
			<td> <%=rs.getString("title") %> </td>
		</tr>
		<tr>
			<td> 작성자 </td>
			<td> <%=rs.getString("writer") %> </td>
		</tr>
		<tr>
			<td> 내 용 </td>
			<td> <%=rs.getString("content") %> </td>
		</tr>
		<tr>	<!-- 지역 값 처리 -->
			<td> 지 역 </td>
			<%
				String area = "";
				switch(rs.getInt("area")) {
				case 0: area="서울"; break;
				case 1: area="경기"; break;
				case 2: area="인천"; break;
				case 3: area="강원"; break;
				case 4: area="충청"; break;
				case 5: area="전라"; break;
				case 6: area="경상"; break;
				case 7: area="제주"; break;
				}
			%>
			<td> <%=area%> </td>
		</tr>
		<tr>	<!-- 비밀글 값 처리 -->
			<td> 비밀글 </td>
			<td>
			<% if(rs.getInt("secret") == 1) { %>
				<span>비밀글 입니다.</span>
			<% } else { %>
				<span>일반글 입니다.</span>
			<% } %>
			</td>
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
				<!-- 수정 버튼 => 비밀번호 확인 -->
				<input type="button" name="update" value="수정" onclick="updBtn(<%=rs.getInt("id") %>)" >
				<input type="button" name="list" value="목록" onclick="listBtn()" >
				<!-- 삭제 버튼 => 비밀번호 확인 -->
				<input type="button" name="delete" value="삭제" onclick="delBtn(<%=rs.getInt("id") %>)" >
			</td>
		</tr>
		
		<!-- 비밀번호 확인란 -->
		<tr id="pwdCheck">
			<td colspan="2" align="center">
				<form id="pwdForm" method="post" action="">
					<input type="hidden" name="id" value="" >
					<input type="password" name="pwd" placeholder="비밀번호 입력" >
					<input type="submit" name="submit" value="확인" >
				</form>
			</td>
		</tr>
	</table>
	
</body>
</html>

