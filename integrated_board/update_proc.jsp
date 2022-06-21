<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!-- integrated_board/update_proc -->
<% 
	Class.forName("com.mysql.jdbc.Driver");
	String db = "jdbc:mysql://localhost:3306/ezen";
	Connection conn = DriverManager.getConnection(db, "root", "dndb5032");
	
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	
	String sql = "select * from board2 where id=?";
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, id);
	
	ResultSet rs = pstmt.executeQuery();
	rs.next();
	
	String dbpwd = rs.getString("pwd");
	
	if(pwd.equals(dbpwd)) {
		int secret;
		if(request.getParameter("secret") == null)
			secret = 0;
		else
			secret = 1;
		String title = request.getParameter("title");
		String writer = request.getParameter("writer");
		String content = request.getParameter("content");
		
		sql = "update board2 set ";
		sql += "secret=?, title=?, writer=?, content=?, writeday=now() where id=?";
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, secret);
		pstmt.setString(2, title);
		pstmt.setString(3, writer);
		pstmt.setString(4, content);
		pstmt.setString(5, id);
		
		out.print(pstmt.toString());
		pstmt.executeUpdate();
	}
	
	rs.close();
	pstmt.close();
	conn.close();
	
	response.sendRedirect("view.jsp?id=" + id);
%>