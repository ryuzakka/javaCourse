<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<!-- write_ok : 질문글을 테이블에 저장하고 list로 이동 -->
<% 
	// DB 연결
	Class.forName("com.mysql.jdbc.Driver");
	String db = "jdbc:mysql://localhost:3306/board_test";
	Connection conn = DriverManager.getConnection(db, "root", "5032");
	
	// request
	request.setCharacterEncoding("UTF-8");
	String title = request.getParameter("title");
	String name = request.getParameter("name");
	String content = request.getParameter("content");
	String pwd = request.getParameter("pwd");
	
	// grp를 구하기 위한 쿼리 : grp의 max값에 +1
	String sql = "select ifnull(max(grp),0) as grp from qna";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery();
	rs.next();
	int grp = rs.getInt("grp") + 1;
	
	// query 생성
	sql = "insert into qna";
	sql += "(title, name, content, pwd, writeday, grp, depth, seq) ";
	sql += "values(?,?,?,?,now(),?,1,1)";
	
	// 심부름꾼 생성
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, title);
	pstmt.setString(2, name);
	pstmt.setString(3, content);
	pstmt.setString(4, pwd);
	pstmt.setInt(5, grp);
	
	// query 실행
	pstmt.executeUpdate();
	
	// 연결 종료
	rs.close();
	pstmt.close();
	conn.close();
	
	// redirect
	response.sendRedirect("list.jsp");
%>