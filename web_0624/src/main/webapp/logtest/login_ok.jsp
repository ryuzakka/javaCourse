<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	Class.forName("com.mysql.jdbc.Driver");
	String db = "jdbc:mysql://localhost:3306/board_test";
	Connection conn = DriverManager.getConnection(db, "root", "5032");
	
	request.setCharacterEncoding("UTF-8");
	String userid = request.getParameter("userid");
	String pwd = request.getParameter("pwd");
	
	String sql = "select * from member where userid=? and pwd=?";
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, userid);
	pstmt.setString(2, pwd);
	
	ResultSet rs = pstmt.executeQuery();
	
	if(rs.next()) {	
		session.setAttribute("userid", rs.getString("userid"));
		
		rs.close();
		pstmt.close();
		conn.close();
		
		response.sendRedirect("main.jsp");
	}
	else {
		rs.close();
		pstmt.close();
		conn.close();
		
		response.sendRedirect("login.jsp");
	}
%>