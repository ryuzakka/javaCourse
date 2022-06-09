<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

<%
	/* SQL(INSERT) 처리 */
	// DB 연결
	Class.forName("com.mysql.jdbc.Driver");
	String url = "jdbc:mysql://localhost:3306/first_test";
	Connection conn = DriverManager.getConnection(url, "root", "5032");
	
	// 파라미터 받기
	request.setCharacterEncoding("utf-8");
	//String bookid = request.getParameter("bookid");
	String booktitle = request.getParameter("booktitle");
	String writer = request.getParameter("writer");
	String cost = request.getParameter("cost");
	String pubdate = request.getParameter("pubdate");
	
	// 쿼리문 작성
	String sql = "INSERT INTO book(title, name, price, writeday) ";
	sql = sql + "VALUES(?,?,?,?)";
	
	// 실행할 객체 생성
	PreparedStatement pstmt = conn.prepareStatement(sql);
	
	// 명령문 세팅
	pstmt.setString(1, booktitle);
	pstmt.setString(2, writer);
	pstmt.setString(3, cost);
	pstmt.setString(4, pubdate);
	
	// 명령문 실행
	pstmt.executeUpdate();
	
	// 연결 종료
	pstmt.close();
	conn.close();
	
	// 리다이렉트
	response.sendRedirect("select.jsp");

%>