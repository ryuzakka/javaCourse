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
	<!-- 
		사용자가 기존의 값을 변경하는 것 => 기존의 값을 폼태그에 출력(DB에서 읽어온다)
		수정문서 == input문서 + 하나의 레코드를 읽어와서 폼에 넣는 것 
	-->
	
	<%
		/* 수정하고자 하는 레코드 하나를 읽어오기 */
		// DB연결
		Class.forName("com.mysql.jdbc.Driver");
		String db = "jdbc:mysql://localhost:3306/first_test";
		Connection conn = DriverManager.getConnection(db, "root", "5032");
		// 쿼리 생성
		String sql = "select * from member where bunho=?";
		// request값 (bunho)
		String bunho = request.getParameter("bunho");
		// 심부름꾼 생성
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, bunho);
		// 실행
		ResultSet rs = pstmt.executeQuery();
		rs.next();
	%>
	
	<form method="post" action="update_ok.jsp">
		<span>* 수정페이지 *</span><p>
		<input type="hidden" name="bunho" value="<%=rs.getString("bunho") %>">
		번호 <span><%=rs.getString("bunho") %></span><p>
		이름 <input type="text" name="name" value="<%=rs.getString("name") %>"><p>
		연락처 <input type="text" name="phone" value="<%=rs.getString("phone") %>"><p>
		나이 <input type="text" name="age" value="<%=rs.getString("age") %>"><p>
		<input type="submit" value="수정">
	</form>
	
</body>
</html>