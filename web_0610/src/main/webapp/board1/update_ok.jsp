<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	Class.forName("com.mysql.jdbc.Driver");
	String db = "jdbc:mysql://localhost:3306/first_test";
	Connection conn = DriverManager.getConnection(db, "root", "5032");
	
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	String pwd = request.getParameter("pwd");
	
	
	// 비밀번호 검증 
	String pwdsql = "SELECT pwd FROM board1 WHERE id=?";
	PreparedStatement pstmt2 = conn.prepareStatement(pwdsql);
	pstmt2.setString(1, id);
	//out.print(pstmt2.toString());
	ResultSet rs = pstmt2.executeQuery();
	rs.next();
	String dbpwd = rs.getString("pwd");
	

	// == : 기본자료형에서만 가능
	// 클래스와 클래스의 비교는 equals() 메소드를 사용
	if(pwd.equals(dbpwd)) {
		String sql = "UPDATE board1 SET ";
		sql += "name=?, title=?, content=? WHERE id=?";
		
		
		PreparedStatement pstmt = conn.prepareStatement(sql); 
		pstmt.setString(1, name);
		pstmt.setString(2, title);
		pstmt.setString(3, content);
		pstmt.setString(4, id);
		
		//out.print(pstmt.toString());
		pstmt.executeUpdate();
		
		pstmt.close();
		pstmt2.close();
		conn.close();
		
		response.sendRedirect("content.jsp?id="+id);
	}
	else {
		pstmt2.close();
		conn.close();
		
		response.sendRedirect("update.jsp?id="+id);
	}

%>