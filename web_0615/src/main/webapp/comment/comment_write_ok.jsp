<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<% 
	/* 댓글폼에 입력한 값을 comment테이블에 저장하고 view로 이동 */
	
	// DB연결
	Class.forName("com.mysql.jdbc.Driver");
	String db = "jdbc:mysql://localhost:3306/board_test";
	Connection conn = DriverManager.getConnection(db, "root", "5032");
	
	// request
	request.setCharacterEncoding("UTF-8");
	String bid = request.getParameter("bid");
	String name = request.getParameter("name");
	String content = request.getParameter("content");
	String pwd = request.getParameter("pwd");
	
	// Query작성
	String sql = "insert into comment";
	sql += "(name, content, pwd, bid, writeday) ";
	sql += "values(?,?,?,?,now())";
	
	// 심부름꾼 생성
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, name);
	pstmt.setString(2, content);
	pstmt.setString(3, pwd);
	pstmt.setString(4, bid);
	
	// 쿼리 실행
	pstmt.executeUpdate();
	
	// close
	pstmt.close();
	conn.close();
	
	// redirect
	response.sendRedirect("view.jsp?id=" + bid);
	
%>