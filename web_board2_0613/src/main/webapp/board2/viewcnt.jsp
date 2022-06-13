<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	Class.forName("com.mysql.jdbc.Driver");
	String db = "jdbc:mysql://localhost:3306/ezen";
	Connection conn = DriverManager.getConnection(db, "root", "dndb5032");
	
	out.print(request.getParameter("pwd"));
	
	if(request.getParameter("pwd") != null) {
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		String sql = "SELECT pwd FROM board2 WHERE id=?";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		
		ResultSet rs = pstmt.executeQuery();
		rs.next();
		
		String dbpwd = rs.getString("pwd");
		
		if(dbpwd.equals(pwd)) {
			String sql3 = "UPDATE board2 SET viewcnt=viewcnt+1 WHERE id=?";
			
			PreparedStatement pstmt3 = conn.prepareStatement(sql3);
			pstmt3.setString(1, id);
			
			pstmt3.executeUpdate();
			
			rs.close();
			pstmt.close();
			pstmt3.close();
			conn.close();
			
			response.sendRedirect("view.jsp?id=" + id);
		}
		else {
			rs.close();
			pstmt.close();
			conn.close();
			
			response.sendRedirect("list.jsp");
		}
	}
	else {
		String id = request.getParameter("id");
		String sql2 = "UPDATE board2 SET viewcnt=viewcnt+1 WHERE id=?";
		
		PreparedStatement pstmt2 = conn.prepareStatement(sql2);
		pstmt2.setString(1, id);
		
		pstmt2.executeUpdate();
		
		pstmt2.close();
		conn.close();
		
		response.sendRedirect("view.jsp?id=" + id);
	}
	
	
%>