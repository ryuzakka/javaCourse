<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!-- integrated_board/rewrite_ok -->
<%
	Class.forName("com.mysql.jdbc.Driver");
	String db = "jdbc:mysql://localhost:3306/ezen";
	Connection conn = DriverManager.getConnection(db, "root", "dndb5032");
	
	request.setCharacterEncoding("UTF-8");
	/* String id = request.getParameter("id"); */
	String title = request.getParameter("title");
	String writer = request.getParameter("writer");
	String content = request.getParameter("content");
	String pwd = request.getParameter("pwd");
	
	String grp = request.getParameter("grp");
	int depth = Integer.parseInt(request.getParameter("depth")) + 1;
	int seq = Integer.parseInt(request.getParameter("seq")) + 1;
	
	String sql = "update board2 set seq=seq+1 where seq>=? and grp=?";
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setInt(1, seq);
	pstmt.setString(2, grp);
	
	pstmt.executeUpdate();
		
	sql = "insert into board2(title, writer, content, pwd, writeday, secret, grp, depth, seq) ";
	sql += "values(?,?,?,?,now(),0,?,?,?)";
	
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, title);
	pstmt.setString(2, writer);
	pstmt.setString(3, content);
	pstmt.setString(4, pwd);
	pstmt.setString(5, grp);
	pstmt.setInt(6, depth);
	pstmt.setInt(7, seq);
	
	
	pstmt.executeUpdate();
	
	pstmt.close();
	conn.close();
	
	response.sendRedirect("list.jsp");
%>