<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	Class.forName("com.mysql.jdbc.Driver");
	String db = "jdbc:mysql://localhost:3306/board_test";
	Connection conn = DriverManager.getConnection(db, "root", "5032");
	
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String title = request.getParameter("title");
	String writer = request.getParameter("writer");
	String content = request.getParameter("content");
	String email = request.getParameter("email");
	String pwd = request.getParameter("pwd");
	
	// 이메일 띄어쓰기 제거
	email.replace(" ", "");
	
	// 이메일에 @가 포함되었는지 확인
	if(email.indexOf("@") < 0) {
		conn.close();
		response.sendRedirect("content.jsp?id=" + id);
	}
	else if(email.indexOf(".") < 0) {	// 이메일에 점(.)이 없으면 도메인 형식에 맞지 않음
		conn.close();
		response.sendRedirect("write.jsp?mail=1");		
	}
	else {
		String sql2 = "select * from gesipan where id=?";
		
		PreparedStatement pstmt2 = conn.prepareStatement(sql2);
		pstmt2.setString(1, id);
		
		ResultSet rs = pstmt2.executeQuery();
		rs.next();
		
		String dbpwd = rs.getString("pwd");
		
		if(!pwd.equals(dbpwd)) {
			rs.close();
			pstmt2.close();
			conn.close();
			
			response.sendRedirect("content.jsp?id=" + id);
		}
		else {
			String sql = "update gesipan set ";
			sql += "title=?, writer=?, email=?, content=? where id=?";
			
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, title);
			pstmt.setString(2, writer);
			pstmt.setString(3, email);
			pstmt.setString(4, content);
			pstmt.setString(5, id);
			
			pstmt.executeUpdate();
			
			rs.close();
			pstmt2.close();
			pstmt.close();
			conn.close();
			
			response.sendRedirect("content.jsp?id=" + id);			
		}
	}
%>