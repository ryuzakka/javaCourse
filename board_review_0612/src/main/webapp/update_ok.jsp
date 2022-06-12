<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<% 
	Class.forName("com.mysql.jdbc.Driver");
	String db = "jdbc:mysql://localhost:3306/ezen";
	Connection conn = DriverManager.getConnection(db, "root", "dndb5032");
	
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String title = request.getParameter("title");
	String name = request.getParameter("writer");
	String content = request.getParameter("content");
	
	String sql = "UPDATE board1 SET title=?, name=?, content=? WHERE id=?";
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(4, id);
	pstmt.setString(1, title);
	pstmt.setString(2, name);
	pstmt.setString(3, content);
	
	pstmt.executeUpdate();
	
	pstmt.close();
	conn.close();
	
	response.sendRedirect("view.jsp?id=" + id);
	
%>
