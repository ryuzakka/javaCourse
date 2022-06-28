<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	/* 비밀번호 검색 : 아아디와 이름과 전화번호를 이용하여 아이디를 검색 */
	Class.forName("com.mysql.jdbc.Driver");
	String db = "jdbc:mysql://localhost:3306/board_test";
	Connection conn = DriverManager.getConnection(db, "root", "5032");
	
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String phone = request.getParameter("phone");
	
	String sql = "select pwd from member2 where userid=? and name=? and phone=?";
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, id);
	pstmt.setString(2, name);
	pstmt.setString(3, phone);
	
	ResultSet rs = pstmt.executeQuery();
	
	if(rs.next()) {
		out.print("비밀번호 : " + rs.getString("pwd"));
		
		rs.close();
		pstmt.close();
		conn.close();
	}
	else {
		rs.close();
		pstmt.close();
		conn.close();
		
		out.print("아이디와 정보가 일치하지 않습니다.");
	}
%>