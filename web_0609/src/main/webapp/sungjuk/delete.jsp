<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<%
	Class.forName("com.mysql.jdbc.Driver");
	String db = "jdbc:mysql://localhost:3306/first_test";
	Connection conn = DriverManager.getConnection(db, "root", "5032");
	
	String sql = "DELETE FROM sungjuk WHERE hakbun=?";
	
	String hakbun = request.getParameter("hakbun");
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, hakbun);
	
	pstmt.executeUpdate();
	
	pstmt.close();
	conn.close();
	
	response.sendRedirect("select.jsp");
%>
