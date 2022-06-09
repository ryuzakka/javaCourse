<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>UPDATE : sungjuk</title>
</head>
<%
	Class.forName("com.mysql.jdbc.Driver");
	String db = "jdbc:mysql://localhost:3306/first_test";
	Connection conn = DriverManager.getConnection(db, "root", "5032");
	
	String sql = "SELECT * FROM sungjuk WHERE hakbun=?";
	String hakbun = request.getParameter("hakbun");
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, hakbun);
	
	ResultSet rs = pstmt.executeQuery();
	rs.next();
%>
<body>
	<form name="input" method="post" action="update_ok.jsp">
		<h2>학생 정보 수정</h2>
		<input type="hidden" name="hakbun" value=<%= rs.getString("hakbun") %>>
		학번 <%= rs.getString("hakbun") %> <p>
		이름 <input type="text" name="name" value=<%= rs.getString("name") %>> <p>
		국어점수 <input type="text" name="kor" value=<%= rs.getString("kor") %>> <p>
		영어점수 <input type="text" name="eng" value=<%= rs.getString("eng") %>> <p>
		수학점수 <input type="text" name="mat" value=<%= rs.getString("mat") %>> <p>
		<input type="submit" value="수정하기">
	</form>
	<a href="select.jsp">뒤로가기</a>
</body>
</html>
<%
	rs.close();
	pstmt.close();
	conn.close();
%>