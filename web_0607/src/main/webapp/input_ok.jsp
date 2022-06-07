<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Input OK</title>
</head>
<body>

	<%
	// DB연결
	Class.forName("com.mysql.jdbc.Driver");
	String db = "jdbc:mysql://localhost:3306/first_test";
	Connection conn = DriverManager.getConnection(db, "root", "5032");
	
	// 입력할 값 가져오기
	request.setCharacterEncoding("utf-8");
	String bunho = request.getParameter("bunho");
	String name = request.getParameter("name");
	String phone = request.getParameter("phone");
	String age = request.getParameter("age");
	
	// 쿼리 작성
	String sql = "INSERT INTO member(bunho,name,phone,age) ";
	sql = sql + "VALUES(?,?,?,?)";
	
	// 심부름꾼 생성
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, bunho);
	pstmt.setString(2, name);
	pstmt.setString(3, phone);
	pstmt.setString(4, age);
	
	// 쿼리 실행
	pstmt.executeUpdate();
	
	// 연결종료
	pstmt.close();
	conn.close();
	%>
	
	
</body>
</html>