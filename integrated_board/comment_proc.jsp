<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!-- integrated_board/comment_proc -->
<% 
	Class.forName("com.mysql.jdbc.Driver");
	String db = "jdbc:mysql://localhost:3306/ezen";
	Connection conn = DriverManager.getConnection(db, "root", "dndb5032");
	
	request.setCharacterEncoding("UTF-8");
	String bid = request.getParameter("bid");
	String pwd = request.getParameter("pwd");
	String writer = request.getParameter("writer");
	String content = request.getParameter("content");
	String id = "";
	String sql = "";
	
	// 댓글 작성
	if(request.getParameter("id") == "") {
		sql = "insert into comment1";
		sql += "(writer, content, pwd, writeday, bid) ";
		sql += "values(?,?,?,now(),?)";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, writer);
		pstmt.setString(2, content);
		pstmt.setString(3, pwd);
		pstmt.setString(4, bid);
		
		pstmt.executeUpdate();
		
		pstmt.close();
	}
	// 댓글 수정
	else {
		id = request.getParameter("id");
		
		sql = "update comment1 set ";
		sql += "writer=?, content=?, writeday=now() where id=?";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, writer);
		pstmt.setString(2, content);
		pstmt.setString(3, id);
		
		pstmt.executeUpdate();
		
		pstmt.close();
	}
	
	conn.close();
	
	response.sendRedirect("view.jsp?id=" + bid);
%>