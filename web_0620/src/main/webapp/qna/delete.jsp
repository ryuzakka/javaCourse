<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<% 
	Class.forName("com.mysql.jdbc.Driver");
	String db = "jdbc:mysql://localhost:3306/board_test";
	Connection conn = DriverManager.getConnection(db, "root", "5032");
	
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	
	String sql = "select * from qna where id=?";
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, id);
	
	ResultSet rs = pstmt.executeQuery();
	rs.next();
	
	String dbpwd = rs.getString("pwd");
	
	if(!pwd.equals(dbpwd)) {
		rs.close();
		pstmt.close();
		conn.close();
		
		response.sendRedirect("content.jsp?id=" + id);
	}
	else {
		// grp : 그대로
		int grp = Integer.parseInt(request.getParameter("grp"));
		// seq : -1
		int seq = Integer.parseInt(request.getParameter("seq"));
		
		sql = "select seq from qna where seq>? and grp=?";
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, seq);
		pstmt.setInt(2, grp);
		
		rs = pstmt.executeQuery();
		if(rs.next()) {
			String sql2 = "update qna set seq=seq-1 where seq>? and grp=?";
			PreparedStatement pstmt2 = conn.prepareStatement(sql2);
			pstmt2.setInt(1, seq);
			pstmt2.setInt(2, grp);
			pstmt2.executeUpdate();
			
			pstmt2.close();
		}
		
		sql = "delete from qna where id=?";
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		
		pstmt.executeUpdate();

		rs.close();
		pstmt.close();
		conn.close();
		
		response.sendRedirect("list.jsp");
	}
%>