<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<% 
	Class.forName("com.mysql.jdbc.Driver");
	String db = "jdbc:mysql://localhost:3306/board_test";
	Connection conn = DriverManager.getConnection(db, "root", "5032");
	
	String id = request.getParameter("id");
	
	String sql = "update qna set viewcnt = viewcnt+1 where id=?";
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, id);
	
	pstmt.executeUpdate();
	
	pstmt.close();
	conn.close();
	
	response.sendRedirect("content.jsp?id=" + id);
%>