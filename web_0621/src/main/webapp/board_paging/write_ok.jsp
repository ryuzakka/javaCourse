<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	// DB연결
	Class.forName("com.mysql.jdbc.Driver");
	String db = "jdbc:mysql://localhost:3306/first_test";
	Connection conn = DriverManager.getConnection(db, "root", "5032");
	
	// request
	request.setCharacterEncoding("UTF-8");
	String name = "tester";
	String title = "페이징 연습";
	String content = "반복반복";
	String pwd = "1234";
	
	// SQL 생성
	String sql = "INSERT INTO board1(name, title, content, pwd, writeday) ";
	sql += "VALUES(?,?,?,?,now())";
	
	// 심부름꾼 생성
	PreparedStatement pstmt = conn.prepareStatement(sql);
	
	for(int i=0; i<2686; i++) {
		pstmt.setString(1, name);
		pstmt.setString(2, title+i);
		pstmt.setString(3, content);
		pstmt.setString(4, pwd);
		// sql 실행
		pstmt.executeUpdate();
	}
	
	// 연결종료
	pstmt.close();
	conn.close();
	
	// list.jsp로 이동
	//response.sendRedirect("list.jsp");
%>
