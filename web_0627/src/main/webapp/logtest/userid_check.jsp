<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	Class.forName("com.mysql.jdbc.Driver");
	String db ="jdbc:mysql://localhost:3306/board_test";
	Connection conn = DriverManager.getConnection(db, "root", "5032");
	
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("userid");
	
	String sql = "select count(*) as cnt from member2 where userid=?";
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, id);
	
	ResultSet rs = pstmt.executeQuery();
	rs.next();
	
	/* AJAX로 호출했을 경우 전달되는 값은 현재 문서의 모든 내용이 전달됨. (단, JAVA(스크립틀릿) 빼고) */
	out.print(rs.getInt("cnt"));
%>