<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board:list</title>
</head>
<%@ page import="java.sql.*" %>
<%
	Class.forName("com.mysql.jdbc.Driver");
	String db = "jdbc:mysql://localhost:3306/ezen";
	Connection conn = DriverManager.getConnection(db, "root", "dndb5032");
	
	String sql = "SELECT * FROM board1";
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	
	ResultSet rs = pstmt.executeQuery();
	
%>
<body>
	<h1>게시판</h1>
	<a href="write.jsp"><input type="button" value="글쓰기"></a>
	<table border="1" width="600">
	    <tr>
	      <td><strong>제목</strong></td>
	      <td><strong>작성자</strong></td>
	      <td><strong>조회수</strong></td>
	      <td><strong>작성일</strong></td>
	    </tr>
	    <% while(rs.next()) { %>
	    <tr>
	    	<td> <a href="viewcnt.jsp?id=<%=rs.getString("id") %>"> <%= rs.getString("title") %> </a> </td>
	    	<td><%= rs.getString("name") %></td>
	    	<td><%= rs.getString("viewcnt") %></td>
	    	<td><%= rs.getString("writeday") %></td>
	    </tr>
	    <% } %>
  </table>
</body>
</html>
<% 
	rs.close();
	pstmt.close();
	conn.close();
%>