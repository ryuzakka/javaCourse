<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<%
	Class.forName("com.mysql.jdbc.Driver");
	String db = "jdbc:mysql://localhost:3306/ezen";
	Connection conn = DriverManager.getConnection(db, "root", "dndb5032");
	
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	
	String sql = "select * from board2 where id=?";
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, id);
	
	ResultSet rs = pstmt.executeQuery();
	rs.next();
	
	String dbpwd = rs.getString("pwd");
	
	if(rs.getInt("secret")==0 || (rs.getInt("secret")==1 && pwd.equals(dbpwd))) {
		sql = "update board2 set viewcnt=viewcnt+1 where id=?";
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		
		pstmt.executeUpdate();
		
		rs.close();
		pstmt.close();
		conn.close();
		
		response.sendRedirect("view.jsp?id=" + id);
	}
	else {
		rs.close();
		pstmt.close();
		conn.close();
		
		response.sendRedirect("list.jsp");
	}
	
%>