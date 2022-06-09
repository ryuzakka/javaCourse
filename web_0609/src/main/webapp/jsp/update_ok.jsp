<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>update_ok : member</title>
</head>
<body>

	<%
		Class.forName("com.mysql.jdbc.Driver");
		String db = "jdbc:mysql://localhost:3306/first_test";
		Connection conn = DriverManager.getConnection(db, "root", "5032");
		
		String sql = "update member set name=?, phone=?, age=? where bunho=?";
		
		request.setCharacterEncoding("utf-8");
		String bunho = request.getParameter("bunho");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String age = request.getParameter("age");
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, name);
		pstmt.setString(2, phone);
		pstmt.setString(3, age);
		pstmt.setString(4, bunho);
		
		pstmt.executeUpdate();

		// 연결종료
		pstmt.close();
		conn.close();
		/* 명령이 끝난 후에 이동하고자 하는 문서로 이동 */
		response.sendRedirect("select.jsp");
	%>
	
</body>
</html>