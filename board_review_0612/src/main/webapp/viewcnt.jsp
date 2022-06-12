<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	Class.forName("com.mysql.jdbc.Driver");
	String db = "jdbc:mysql://localhost:3306/ezen";
	Connection conn = DriverManager.getConnection(db, "root", "dndb5032");
	
	String id = request.getParameter("id");
	
	String sql = "UPDATE board1 SET viewcnt=viewcnt+1 WHERE id=?";
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, id);
	
	pstmt.executeUpdate();
	
	pstmt.close();
	conn.close();
	
	response.sendRedirect("view.jsp?id=" + id);
%>
