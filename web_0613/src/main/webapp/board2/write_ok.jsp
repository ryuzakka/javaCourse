<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.sql.*" %>
<%
	Class.forName("com.mysql.jdbc.Driver");
	String db = "jdbc:mysql://localhost:3306/board_test";
	Connection conn = DriverManager.getConnection(db, "root", "5032");
	
	// request
	request.setCharacterEncoding("UTF-8");
	String title = request.getParameter("title");
	String writer = request.getParameter("writer");
	String content = request.getParameter("content");
	String area = request.getParameter("area");		// JS로 유효성 검사체크
	String pwd = request.getParameter("pwd");
	
	String secret;	// 비밀글 유효성 검사
	if(request.getParameter("secret") == null) {
		secret = "0";
	}
	else {
		secret = request.getParameter("secret");
	}
	
	// 쿼리 생성
	String sql = "INSERT INTO ";
	sql += "board2(title, writer, content, area, secret, writeday, pwd) ";
	sql += "VALUES(?,?,?,?,?,now(),?)";
	
	// 심부름꾼 생성
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, title);
	pstmt.setString(2, writer);
	pstmt.setString(3, content);
	pstmt.setString(4, area);
	pstmt.setString(5, secret);
	pstmt.setString(6, pwd);

	// 쿼리 실행
	pstmt.executeUpdate();
	
	// close
	pstmt.close();
	conn.close();
	
	// redirect
	response.sendRedirect("list.jsp");
	
	// radio와 checkbox의 값 체크 부분
/*	out.print(request.getParameter("writer"));
	out.print("<hr>");
	out.print(request.getParameter("area"));
	out.print("<hr>");

*/
%>
