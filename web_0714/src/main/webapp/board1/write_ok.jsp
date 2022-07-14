<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	// write.jsp의 폼에 입력된 값을 가져와서 board1 테이블에 저장 후 list.jsp로 이동
	// DB연결
	Class.forName("com.mysql.jdbc.Driver");
	String db = "jdbc:mysql://localhost:3306/first_test";
	Connection conn = DriverManager.getConnection(db, "root", "5032");
	
	// request
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	String pwd = request.getParameter("pwd");
	
	// SQL 생성
	String sql = "INSERT INTO board1(name, title, content, pwd, readcnt, writeday) ";
	sql += "VALUES(?,?,?,?,0,now())";
	
	// 심부름꾼 생성
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, name);
	pstmt.setString(2, title);
	pstmt.setString(3, content);
	pstmt.setString(4, pwd);
	
	// sql 실행
	pstmt.executeUpdate();
	
	// 연결종료
	pstmt.close();
	conn.close();
	
	// list.jsp로 이동
	response.sendRedirect("list.jsp");
%>
