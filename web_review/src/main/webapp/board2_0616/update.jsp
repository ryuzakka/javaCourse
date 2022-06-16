<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	Class.forName("com.mysql.jdbc.Driver");
	String db = "jdbc:mysql://localhost:3306/ezen";
	Connection conn = DriverManager.getConnection(db, "root", "dndb5032");
	
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	
	String sql = "select * from board2 where id=?";
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, id);
	
	ResultSet rs = pstmt.executeQuery();
	rs.next();
	
	String dbpwd = rs.getString("pwd");
	
	if(!pwd.equals(dbpwd)){
		rs.close();
		pstmt.close();
		conn.close();
		
		response.sendRedirect("view.jsp?id=" + id);
	}
	
	int area = 0;
	switch(rs.getInt("area")) {
		case 0: area=0; break;
		case 1: area=1; break;
		case 2: area=2; break;
		case 3: area=3; break;
		case 4: area=4; break;
		case 5: area=5; break;
		case 6: area=6; break;
		case 7: area=7; break;
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board2_0616/update</title>
<script>
	function init() {
		document.getElementById('updForm').area[<%=rs.getInt("area")%>].checked = true;
		
		if(<%=rs.getString("secret")%> == 1)
			document.getElementById('updForm').secret.checked = true;
	}
</script>
</head>
<body onload="init()">	<!-- board2_0616/update -->

	<form id="updForm" method="post" action="update_proc.jsp">
		<input type="hidden" name="id" value="<%=id %>" >
		<input type="hidden" name="pwd" value="<%=pwd %>" >
		<table width="600" align="center" border="1">
			<tr>
				<td> 제 목 </td>
				<td> <input type="text" name="title" value="<%=rs.getString("title") %>" size="40" > </td>
			</tr>
			<tr>
				<td> 작성자 </td>
				<td> <input type="text" name="writer" value="<%=rs.getString("writer") %>" size="20" > </td>
			</tr>
			<tr>
				<td> 내 용 </td>
				<td> <textarea cols="58" rows="6" name="content"><%=rs.getString("content") %></textarea> </td>
			</tr>
			<tr>
				<td> 지 역 </td>
				<td>
					<input type="radio" name="area" value="0">서울
					<input type="radio" name="area" value="1">경기
					<input type="radio" name="area" value="2">인천
					<input type="radio" name="area" value="3">강원
					<input type="radio" name="area" value="4">충청
					<input type="radio" name="area" value="5">전라
					<input type="radio" name="area" value="6">경상
					<input type="radio" name="area" value="7">제주
				</td>
			</tr>
			<tr>
				<td> 비밀글 </td>
				<td> <input type="checkbox" name="secret" > 체크하시면 비밀글이 됩니다. </td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" name="submit" value="수정하기" >
					<a href="list.jsp"><input type="button" value="목록" ></a>
				</td>
			</tr>
		</table>
	</form>

</body>
</html>