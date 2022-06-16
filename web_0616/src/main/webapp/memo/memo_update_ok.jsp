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
	
	String sql = "select pwd from memo where id=?";
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, id);
	
	ResultSet rs = pstmt.executeQuery();
	rs.next();
	
	String dbpwd = rs.getString("pwd");
	rs.close();
	
	if(pwd.equals(dbpwd)) {
		sql = "update memo set ";
		sql += "name=?, content=? where id=?";
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, name);
		pstmt.setString(2, content);
		pstmt.setString(3, id);
		
		pstmt.executeUpdate();
		
	}
	pstmt.close();
	conn.close();
	
	response.sendRedirect("memo.jsp");
	
%>