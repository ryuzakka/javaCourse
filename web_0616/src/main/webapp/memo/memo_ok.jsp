<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<%
	// 폼에 입력된 값을 읽어와서 memo 테이블에 저장을 하고 난 뒤 memo.jsp로 이동
	Class.forName("com.mysql.jdbc.Driver");
	String db = "jdbc:mysql://localhost:3306/board_test";
	Connection conn = DriverManager.getConnection(db, "root", "5032");
	
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String content = request.getParameter("content");
	String pwd = request.getParameter("pwd");
	
	String sql = "insert into memo(name, content, pwd, writeday) ";
	sql += "values(?,?,?,now())";
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, name);
	pstmt.setString(2, content);
	pstmt.setString(3, pwd);
	
	pstmt.executeUpdate();
	
	pstmt.close();
	conn.close();
	
	response.sendRedirect("memo.jsp");
%>