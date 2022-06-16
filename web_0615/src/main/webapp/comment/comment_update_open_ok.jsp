<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<%
	Class.forName("com.mysql.jdbc.Driver");
	String db = "jdbc:mysql://localhost:3306/board_test";
	Connection conn = DriverManager.getConnection(db, "root", "5032");
	
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String content = request.getParameter("content");
	String pwd = request.getParameter("pwd");
	
	String pwdSql = "select pwd from comment where id=?";
	
	PreparedStatement pstmt = conn.prepareStatement(pwdSql);
	pstmt.setString(1, id);
	
	ResultSet rs = pstmt.executeQuery();
	rs.next();
	
	String dbpwd = rs.getString("pwd");
	
	if(pwd.equals(dbpwd)) {
		String sql = "update comment set ";
		sql += "name=?, content=? where id=?";
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, name);
		pstmt.setString(2, content);
		pstmt.setString(3, id);
		
		pstmt.executeUpdate();
		
		rs.close();
		pstmt.close();
		conn.close();
%>
<script>
	// 부모창을 새로고침
	opener.location.reload();
	// 자식창 닫기
	window.close();
</script>
<%	}
	else {
		rs.close();
		pstmt.close();
		conn.close();
		
		response.sendRedirect("comment_update_open.jsp?id=" + id);
	}
%>

