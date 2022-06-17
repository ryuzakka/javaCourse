<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	Class.forName("com.mysql.jdbc.Driver");
	String db = "jdbc:mysql://localhost:3306/board_test";
	Connection conn = DriverManager.getConnection(db, "root", "5032");
	
	request.setCharacterEncoding("UTF-8");
	String title = request.getParameter("title");
	String writer = request.getParameter("writer");
	String content = request.getParameter("content");
	String pwd = request.getParameter("pwd");
	String email = request.getParameter("email");
	
	// 이메일 띄어쓰기 제거
	email.replace(" ", "");
	
	// 이메일에 @가 포함되었는지 확인
	if(email.indexOf("@") < 0) {
		conn.close();
		response.sendRedirect("write.jsp?mail=1");
	}
	else if(email.indexOf(".") < 0) {	// 이메일에 점(.)이 없으면 도메인 형식에 맞지 않음
		conn.close();
		response.sendRedirect("write.jsp?mail=1");		
	}
	else {
		String sql = "insert into gesipan";
		sql += "(title, writer, content, email, pwd, writeday) ";
		sql += "values(?,?,?,?,?,now())";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, title);
		pstmt.setString(2, writer);
		pstmt.setString(3, content);
		pstmt.setString(4, email);
		pstmt.setString(5, pwd);
		
		pstmt.executeUpdate();
		pstmt.close();
		conn.close();
		
		response.sendRedirect("list.jsp");
	}
%>