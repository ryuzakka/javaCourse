<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<%
	Class.forName("com.mysql.jdbc.Driver");
	String db = "jdbc:mysql://localhost:3306/first_test";
	Connection conn = DriverManager.getConnection(db, "root", "5032");
	
	String id = request.getParameter("id");
	
	String sql = "UPDATE board1 ";
	sql += "SET readcnt=readcnt+1 ";
	sql += "WHERE id=?";
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, id);
	
	pstmt.executeUpdate();
	
	response.sendRedirect("content.jsp?id="+id);
%>
