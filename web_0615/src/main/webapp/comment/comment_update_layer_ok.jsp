<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	Class.forName("com.mysql.jdbc.Driver");
	String db = "jdbc:mysql://localhost:3306/board_test";
	Connection conn = DriverManager.getConnection(db, "root", "5032");
	
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String bid = request.getParameter("bid");
	String pwd = request.getParameter("pwd");
	String name = request.getParameter("name");
	String content = request.getParameter("content");
	
	String sql = "select pwd from comment where id=?";
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, id);
	
	ResultSet rs = pstmt.executeQuery();
	rs.next();
	
	String dbpwd = rs.getString("pwd");
	
	if(pwd.equals(dbpwd)) {
		sql = "update comment set ";
		sql += "name=?, content=? where id=?";
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, name);
		pstmt.setString(2, content);
		pstmt.setString(3, id);
		
		pstmt.executeUpdate();
		
		rs.close();
		pstmt.close();
		conn.close();
		
		response.sendRedirect("view.jsp?id=" + bid);
	}
	else {
		rs.close();
		pstmt.close();
		conn.close();
		
		response.sendRedirect("view.jsp?id=" + bid);
	}
	
%>