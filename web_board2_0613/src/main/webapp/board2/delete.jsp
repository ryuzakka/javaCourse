<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<% 
	Class.forName("com.mysql.jdbc.Driver");
	String db = "jdbc:mysql://localhost:3306/ezen";
	Connection conn = DriverManager.getConnection(db, "root", "dndb5032");
	
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	
	String sql = "SELECT pwd FROM board2 WHERE id=?";
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, id);
	
	ResultSet rs = pstmt.executeQuery();
	rs.next();
	
	String dbpwd = rs.getString("pwd");
	
	if(dbpwd.equals(pwd)) {
		String sql2 = "DELETE FROM board2 WHERE id=?";
		PreparedStatement pstmt2 = conn.prepareStatement(sql2);
		pstmt2.setString(1, id);
		pstmt2.executeUpdate();
		
		rs.close();
		pstmt2.close();
		pstmt.close();
		conn.close();
		
		response.sendRedirect("list.jsp");
	}
	else {
		rs.close();
		pstmt.close();
		conn.close();
		
		response.sendRedirect("view.jsp?id=" + id);
	}
	
%>