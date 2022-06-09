<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>UPDATE : book</title>
</head>
<%@ page import="java.sql.*" %>
<%
	Class.forName("com.mysql.jdbc.Driver");
	String db = "jdbc:mysql://localhost:3306/first_test";
	Connection conn = DriverManager.getConnection(db, "root", "5032");
	
	String bookid = request.getParameter("id");
	
	String sql = "SELECT * FROM book WHERE id=?";
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, bookid);
	
	ResultSet rs = pstmt.executeQuery();
	rs.next();
%>
<body>
	<form method="post" action="update_ok.jsp">
		<h2> 도서 정보 수정 </h2>
		<input type="hidden" name="bookid" value="<%=rs.getString("id") %>">
		책제목 : <input type="text" name="booktitle" value="<%=rs.getString("title") %>" maxlength="100"> <p>
		저자 : <input type="text" name="writer" value="<%=rs.getString("name") %>" maxlength="50"> <p>
		가격 : <input type="text" name="cost" value="<%=rs.getString("price") %>"> <p>
		출간일 : <input type="text" name="pubdate" value="<%=rs.getString("writeday") %>"> <p>
		<input type="submit" value="수정완료">
		<a href="select.jsp">뒤로가기</a>
	</form>
</body>
</html>
<%
	rs.close();
	pstmt.close();
	conn.close();
%>