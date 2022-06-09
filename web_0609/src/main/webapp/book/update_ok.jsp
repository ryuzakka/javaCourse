<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.sql.*" %>
<% 
	Class.forName("com.mysql.jdbc.Driver");
	String db = "jdbc:mysql://localhost:3306/first_test";
	Connection conn = DriverManager.getConnection(db, "root", "5032");
	
	String sql = "UPDATE book SET ";
	sql += "title=?, name=?, price=?, writeday=? ";
	sql += "WHERE id=?";
	
	request.setCharacterEncoding("UTF-8");
	String booktitle = request.getParameter("booktitle");
	String writer = request.getParameter("writer");
	String cost = request.getParameter("cost");
	String pubdate = request.getParameter("pubdate");
	String bookid = request.getParameter("bookid");
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, booktitle);
	pstmt.setString(2, writer);
	pstmt.setString(3, cost);
	pstmt.setString(4, pubdate);
	pstmt.setString(5, bookid);
	
	pstmt.executeUpdate();
	
	pstmt.close();
	conn.close();
	
	response.sendRedirect("select.jsp");
%>
