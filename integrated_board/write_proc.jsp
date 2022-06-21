<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!-- integrated_board/write_ok -->
<%
	Class.forName("com.mysql.jdbc.Driver");
	String db = "jdbc:mysql://localhost:3306/ezen";
	Connection conn = DriverManager.getConnection(db, "root", "dndb5032");
	
	request.setCharacterEncoding("UTF-8");
	String title = request.getParameter("title");
	String writer = request.getParameter("writer");
	String content = request.getParameter("content");
	String pwd = request.getParameter("pwd");
	
	int secret;
	if(request.getParameter("secret") == null) {
		secret = 0;
	} else {
		secret = 1;
	}
	
	String sql = "select ifnull(max(grp),0) as grp from board2";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery();
	rs.next();
	int grp = rs.getInt("grp") + 1;
	
	sql = "insert into board2(title, writer, content, pwd, writeday, secret, grp, depth, seq) ";
	sql += "values(?,?,?,?,now(),?,?,1,1)";
	
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, title);
	pstmt.setString(2, writer);
	pstmt.setString(3, content);
	pstmt.setString(4, pwd);
	pstmt.setInt(5, secret);
	pstmt.setInt(6, grp);
	
	pstmt.executeUpdate();
	
	pstmt.close();
	conn.close();
	
	response.sendRedirect("list.jsp");
%>