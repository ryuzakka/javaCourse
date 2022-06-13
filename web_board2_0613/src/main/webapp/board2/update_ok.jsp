<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<% 
	Class.forName("com.mysql.jdbc.Driver");
	String db = "jdbc:mysql://localhost:3306/ezen";
	Connection conn = DriverManager.getConnection(db, "root", "dndb5032");
	
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String title = request.getParameter("title");
	String writer = request.getParameter("writer");
	String content = request.getParameter("content");
	String area = request.getParameter("area");
	int secret;
	if(request.getParameter("secret") == null) {
		secret = 0;
	} else {
		secret = 1; 
	}
		
	String sql = "UPDATE board2 SET ";
	sql += "title=?, writer=?, content=?, ";
	sql += "area=?, secret=? WHERE id=?";
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, title);
	pstmt.setString(2, writer);
	pstmt.setString(3, content);
	pstmt.setString(4, area);
	pstmt.setInt(5, secret);
	pstmt.setString(6, id);
	
	pstmt.executeUpdate();
	
	pstmt.close();
	conn.close();
	
	response.sendRedirect("view.jsp?id=" + id);
%>