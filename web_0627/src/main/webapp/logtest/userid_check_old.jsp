<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	Class.forName("com.mysql.jdbc.Driver");
	String db ="jdbc:mysql://localhost:3306/board_test";
	Connection conn = DriverManager.getConnection(db, "root", "5032");
	
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("userid");
	
	String sql = "select count(*) as cnt from member2 where userid=?";
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, id);
	
	ResultSet rs = pstmt.executeQuery();
	rs.next();
	
	if(rs.getInt("cnt") > 0) {
		rs.close();
		pstmt.close();
		conn.close();
%>
<script>
	alert("사용 불가");
	history.back();
</script>
<%	}
	else {
		rs.close();
		pstmt.close();
		conn.close();
%>
<script>
	alert("사용 가능");
	history.back();
</script>	
<%	} %>
