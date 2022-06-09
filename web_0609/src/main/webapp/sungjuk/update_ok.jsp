<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<%
	Class.forName("com.mysql.jdbc.Driver");
	String db = "jdbc:mysql://localhost:3306/first_test";
	Connection conn = DriverManager.getConnection(db, "root", "5032");
	
	String sql = "UPDATE sungjuk SET name=?, kor=?, eng=?, mat=? WHERE hakbun=?";
	
	request.setCharacterEncoding("utf-8");
	String hakbun = request.getParameter("hakbun");
	String name = request.getParameter("name");
	String kor = request.getParameter("kor");
	String eng = request.getParameter("eng");
	String mat = request.getParameter("mat");
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(5, hakbun);
	pstmt.setString(1, name);
	pstmt.setString(2, kor);
	pstmt.setString(3, eng);
	pstmt.setString(4, mat);
	
	pstmt.executeUpdate();
	
	pstmt.close();
	conn.close();
	
	response.sendRedirect("select.jsp");
%>
