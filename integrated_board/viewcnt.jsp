<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!-- integrated_board/viewcnt -->
<%
	Class.forName("com.mysql.jdbc.Driver");
	String db = "jdbc:mysql://localhost:3306/ezen";
	Connection conn = DriverManager.getConnection(db, "root", "dndb5032");
	
	String id = request.getParameter("id");
	
	if( request.getParameter("pwd") != null ) {
		// 비번 확인
		request.setCharacterEncoding("UTF-8");
		String pwd = request.getParameter("pwd");
		
		String sql2 = "select * from board2 where id=?";
		
		PreparedStatement pstmt2 = conn.prepareStatement(sql2);
		pstmt2.setString(1, id);
		
		ResultSet rs = pstmt2.executeQuery();
		rs.next();
		
		String dbpwd = rs.getString("pwd");
		if(!pwd.equals(dbpwd)) {
			rs.close();
			pstmt2.close();
			conn.close();
			
			response.sendRedirect("list.jsp");
		}
		rs.close();
		pstmt2.close();
	}
	
	// 조회수+1
	String sql = "update board2 set viewcnt=viewcnt+1 where id=?";
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, id);
	
	pstmt.executeUpdate();
	
	pstmt.close();
	conn.close();
	
	response.sendRedirect("view.jsp?id=" + id);
	
%>