<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	Class.forName("com.mysql.jdbc.Driver");
	String db = "jdbc:mysql://localhost:3306/board_test";
	Connection conn = DriverManager.getConnection(db, "root", "5032");
	
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	
	String sql2 = "select * from gesipan where id=?";
	
	PreparedStatement pstmt2 = conn.prepareStatement(sql2);
	pstmt2.setString(1, id);
	
	ResultSet rs = pstmt2.executeQuery();
	rs.next();
	
	String dbpwd = rs.getString("pwd");
	
	if(!pwd.equals(dbpwd)) {
		rs.close();
		pstmt2.close();
		conn.close();
		
		response.sendRedirect("content.jsp?id=" + id);
	}
	else {
		String sql = "delete from gesipan where id=?";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		
		pstmt.executeUpdate();
		
		rs.close();
		pstmt2.close();
		pstmt.close();
		conn.close();
		
		response.sendRedirect("list.jsp");		
	}
	
%>