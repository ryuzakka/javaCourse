<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>update : member</title>
</head>
<body>

	<% 
		Class.forName("com.mysql.jdbc.Driver");
		String db = "jdbc:mysql://localhost:3306/first_test";
		Connection conn = DriverManager.getConnection(db, "root", "5032");
	%>
	
	<%
		int bunho = Integer.parseInt(request.getParameter("bunho"));
		int age = Integer.parseInt(request.getParameter("age"));
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		
		String sql = "UPDATE member SET bunho=?, name=?, phone=?, age=?";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, bunho);
		pstmt.setString(2, name);
		pstmt.setString(3, phone);
		pstmt.setInt(4, age);
		
		pstmt.executeUpdate();
	%>
	
	<%
		// 연결종료
		pstmt.close();
		conn.close();
	%>
	
	<%
		/* 명령이 끝난 후에 이동하고자 하는 문서로 이동 */
		response.sendRedirect("select.jsp");
	%>
	
</body>
</html>