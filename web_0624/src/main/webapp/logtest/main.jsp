<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>0624logtest/main</title>
<style>
	#first {
		width:800px;
		height:50px;
		background:purple;
		color:white;
		text-align:center;
		margin:auto;
	}
	#second {
		width:800px;
		height:40px;
		text-align:right;
		margin:auto;
	}
</style>
</head>
<body>

<% if(session.getAttribute("userid") != null) { 
		Class.forName("com.mysql.jdbc.Driver");
		String db = "jdbc:mysql://localhost:3306/board_test";
		Connection conn = DriverManager.getConnection(db, "root", "5032");
		String userid = (String)session.getAttribute("userid");
		String sql = "select * from member where userid=?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, userid);
		ResultSet rs = pstmt.executeQuery();
		rs.next();
%>
	<div id="first">Welcome!<br><%=rs.getString("name")%>님, 반갑습니다.</div>
	<div id="second">
		<%=rs.getString("name")%>님  <a href="logout.jsp">로그아웃</a>  고객센터
	</div>
<%
	rs.close();
	pstmt.close();
	conn.close();
%>
<% } else { %>
	<div id="first">Welcome!</div>
	<div id="second">
		<a href="login.jsp">로그인</a>  회원가입  고객센터
	</div>
<% } %>
</body>
</html>