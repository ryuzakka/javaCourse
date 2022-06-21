<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	Class.forName("com.mysql.jdbc.Driver");
	String db = "jdbc:mysql://localhost:3306/ezen";
	Connection conn = DriverManager.getConnection(db, "root", "dndb5032");
	
	int pager;
	
	if(request.getParameter("pager") == null)
		pager = 1;
	else
		pager = Integer.parseInt(request.getParameter("pager"));
	
	int index = (pager - 1) * 5;
	
	String sql = "select * from board2 order by grp desc, seq asc LIMIT ?,5";
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setInt(1, index);
	
	ResultSet rs = pstmt.executeQuery();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>integrated_board/list</title>
<style>
	table tr>td:nth-child(2) {
		width:280px;
	}
	#pwdchk { 
		display:none;
		position:absolute;
		width:125px; 
		height:30px;
		padding-top:8px;
		padding-left:10px;
		background:#eeeeee; 
	}
</style>
<script>
	function pwdCheck(id) {
		var form = document.getElementById('pwdchk');
		form.style.display = "table-row";
		form.style.left = (event.pageX+10)+"px";
		form.style.top = event.pageY+"px";
		document.pwdchkfrm.id.value = id;
	}
</script>
</head>
<body>	<!-- integrated_board/list -->
	
	<table width="600" border="1" align="center">
		<caption><h2>게시판 목록</h2></caption>
		<tr>
			<td> <strong> 비밀글 </strong> </td>
			<td> <strong> 제 목 </strong> </td>
			<td> <strong> 이 름 </strong> </td>
			<td> <strong> 조회수 </strong> </td>
			<td> <strong> 작성일 </strong> </td>
		</tr>
	<% while(rs.next()) { %>
		<tr>
			<td align="center"> 
			<% if(rs.getInt("secret") == 1) { %>
				<span>v</span>
			<% } %>
			</td>
			<td>
			<% 
			String str = "";
			if(rs.getInt("secret") == 0) {
				if(rs.getInt("depth") != 1) {
					for(int i=1; i<rs.getInt("depth"); i++) {
						str += "&nbsp;&nbsp;";
					}
					str += "└ ";
				}
			%>
				<a href="viewcnt.jsp?id=<%=rs.getInt("id")%>"><%=str%><%=rs.getString("title") %></a>
			<% } else { %>
				<div onclick="pwdCheck(<%=rs.getInt("id")%>)"> <%=rs.getString("title") %> </div>
			<% } %>
			</td>
			<td> <%=rs.getString("writer") %> </td>
			<td> <%=rs.getInt("viewcnt") %> </td>
			<td> <%=rs.getString("writeday") %> </td>
		</tr>
	<% } %>
		<tr>
			<td colspan="5"> <a href="write.jsp"><input type="button" value="글쓰기"></a> </td>
		</tr>
		
		<!-- 비밀글 비밀번호 입력 폼 -->
		<div id="pwdchk">
			<form name="pwdchkfrm" method="post" action="viewcnt.jsp">
				<input type="hidden" name="id" value="">
				<input type="password" name="pwd" size="4">
				<input type="submit" value="확인">
			</form>
		</div>
		
		<%
			int temp = pager / 10;
			if((pager%10) == 0) {
				temp--;
			}
			int pstart = (temp*10) + 1;
			int pend = pstart + 9;
			
			sql = "select ceil(COUNT(*)/5) as total from board2";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			rs.next();
			int total = rs.getInt("total");
			
			if(pend > total) {
				pend = total;
			} 
		%>
		<tr>
			<td colspan="5" align="center">
			<% for(int i=pstart; i<=pend; i++) { %>
				<% if(pager == i) {%>
				<span style="color:darkorange;font-size:20px"><%=i%></span>
				<% } else { %>
				<a href="list.jsp?pager=<%=i%>"><%=i%></a>
				<% } %>
			<% } %>
			</td>
		</tr>
	</table>
	
</body>
</html>

<%
	rs.close();
	pstmt.close();
	conn.close();
%>