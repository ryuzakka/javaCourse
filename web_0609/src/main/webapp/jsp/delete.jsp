<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>delete : member</title>
<style>
	table tr td {
		text-align:center;
	}
</style>
</head>
<body>
	<%
		/* jsp에서 테이블의 레코드 삭제하기 */
		
		// (예시)import 없이 클래스를 사용할 수 있다.
		// java.util.Date today = new java.util.Date();
		
		// DB연결
		Class.forName("com.mysql.jdbc.Driver");
		String db = "jdbc:mysql://localhost:3306/first_test";
		Connection conn = DriverManager.getConnection(db, "root", "5032");

		// 파라미터 저장
		String bunho = request.getParameter("bunho");
		
		// 쿼리 작성
		String sql = "delete from member where bunho=?";
		
		// 심부름꾼(객체) 생성
		PreparedStatement pstmt = conn.prepareStatement(sql);
		// 심부름꾼(객체) 세팅
		pstmt.setString(1, bunho);
		
		// 쿼리 실행
		pstmt.executeUpdate();
	
		// 연결 종료
		pstmt.close();
		conn.close();

		/* 명령이 끝난 후에 이동하고자 하는 문서로 이동 */
		response.sendRedirect("select.jsp");
	%>

</body>
</html>