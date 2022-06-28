<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	/* 아이디 검색 : 이름과 전화번호를 이용하여 아이디를 검색 */
	Class.forName("com.mysql.jdbc.Driver");
	String db = "jdbc:mysql://localhost:3306/board_test";
	Connection conn = DriverManager.getConnection(db, "root", "5032");
	
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	String phone = request.getParameter("phone");
	
	String sql = "select userid from member2 where name=? and phone=?";
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, name);
	pstmt.setString(2, phone);
	
	ResultSet rs = pstmt.executeQuery();
	if(rs.next()) {		
		out.print("ID : " + rs.getString("userid"));
		
		rs.close();
		pstmt.close();
		conn.close();
	}
	else {
		rs.close();
		pstmt.close();
		conn.close();
		
		out.print("찾으시는 아이디는 존재하지 않습니다.");
	}
	
	
	
%>
