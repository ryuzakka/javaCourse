<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	Class.forName("com.mysql.jdbc.Driver");
	String db = "jdbc:mysql://localhost:3306/board_test";
	Connection conn = DriverManager.getConnection(db, "root", "5032");
	
	String sql = "select * from memo order by id desc";
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	
	ResultSet rs = pstmt.executeQuery();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>0615/memo/memo</title>
<style>
	form > table {
		border:1px solid grey;
	}
	#dhr { visibility:hidden; }
</style>
<script>
	function memo_upd(id, name, content) {
		document.getElementById('memoform').action = "memo_update_ok.jsp";
		/* document.getElementById('memoform').innerHTML = "<input type='hidden' name='id' value='"+id+"'>"; */
		document.getElementById('memoform').id.value = id;
		document.getElementById('memoform').name.value = name;
		document.getElementById('memoform').content.value = content;
		document.getElementById('memoform').submit.value = "수정";
	}
	function memo_del(id, name, content) {
		document.getElementById('memoform').action = "memo_delete_ok.jsp";
		document.getElementById('memoform').id.value = id;
		document.getElementById('memoform').name.value = name;
		document.getElementById('memoform').content.value = content;
		document.getElementById('memoform').submit.value = "삭제";
	}
	function memo_ins() {
		document.getElementById('memoform').action = "memo_ok.jsp";
		document.getElementById('memoform').id.value = "";
		document.getElementById('memoform').name.value = "";
		document.getElementById('memoform').content.value = "";
		document.getElementById('memoform').submit.value = "입력";
	}
</script>
</head>
<body>	<!-- 0615/memo/memo.jsp -->
	
	<!-- 메모장 입력 폼 -->
	<form id="memoform" method="post" action="memo_ok.jsp">
		<table width="530" align="center">
			<caption><h2> memo </h2></caption>
			<input type="hidden" name="id">
			<td> <input type="text" name="name" size="5" placeholder="이름"> </td>
			<td> <input type="text" name="content" size="35" placeholder="내용"> </td>
			<td> <input type="password" name="pwd" size="4" placeholder="비밀번호"> </td>
			<td> <input type="submit" name="submit" value="입력"> </td>
		</table>
	</form>
	<p>
	
	<!-- 메모장 내용 출력 부분 -->
	<table width="800" align="center" border="1">
		<tr align="center" height="60">
			<td> <strong>이 름</strong> </td>
			<td> <strong>내 용</strong> </td>
			<!-- <td> 작성일(a태그) </td> -->
			<td> <strong>작성일(함수)</strong> </td>
		</tr>
	<% while(rs.next()) { %>
		<tr>
			<td onclick="memo_upd(<%=rs.getInt("id") %>,'<%=rs.getString("name")%>', '<%=rs.getString("content")%>')"> <%=rs.getString("name") %> </td>					<!-- 이름을 클릭하면 수정 -->
			<td onclick="memo_ins()"> <%=rs.getString("content") %> </td>
			<%-- <td><a href="memo_delete_ok.jsp?id=<%=rs.getString("id")%>"> <%=rs.getString("writeday") %> </a></td> --%>	<!-- 날짜를 클릭하면 삭제 : a태그 -->
			<%-- <td onclick="location='memo_delete_ok.jsp?id=<%=rs.getString("id")%>'"> <%=rs.getString("writeday") %> </td> --%>	<!-- 날짜를 클릭하면 삭제 : 함수 -->
			<td onclick="memo_del(<%=rs.getInt("id")%>,'<%=rs.getString("name")%>','<%=rs.getString("content")%>')"> <%=rs.getString("writeday") %> </td>
		</tr>
	<% } %>
	</table>
	
	<!-- 페이지 이동 방식 -->
<!--
	<td><a href="memo_delete_ok.jsp"> </a></td>
	<td onclick="location='memo_delete_ok.jsp'"> </td>
	<td onclick="del()"> </td>
	function del() {
		location = "memo_delete_ok.jsp";
	}
-->

	<form id="dhr" method="post" action="memo_delete_ok.jsp">
		<input type="hidden" name="id" value="">
		<input type="text" name="pwd" value="" size="3">
		<input type="submit" value="확인">
	</form>
	
</body>
</html>