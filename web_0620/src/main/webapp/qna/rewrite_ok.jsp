<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

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
	
	/* grp, depth, seq */
	// grp : 그대로
	int grp = Integer.parseInt(request.getParameter("grp"));
	// depth : +1
	int depth = Integer.parseInt(request.getParameter("depth")) +1;
	// seq : +1
	int seq = Integer.parseInt(request.getParameter("seq")) +1;
	
	// 지금 들어오는 글의 seq보다 큰 글은 seq를 1씩 증가시킨다.
	String sql2 = "update qna set seq=seq+1 where seq>=? and grp=?";
	
	PreparedStatement pstmt2 = conn.prepareStatement(sql2);
	pstmt2.setInt(1, seq);
	pstmt2.setInt(2, grp);
	pstmt2.executeUpdate();
	
	// query 생성
	String sql = "insert into qna";
	sql += "(title, name, content, pwd, writeday, grp, depth, seq) ";
	sql += "values(?,?,?,?,now(),?,?,?)";
	
	// 심부름꾼 생성
	PreparedStatement pstmt = conn.prepareStatement(sql);	
	pstmt.setString(1, title);
	pstmt.setString(2, name);
	pstmt.setString(3, content);
	pstmt.setString(4, pwd);
	pstmt.setInt(5, grp);
	pstmt.setInt(6, depth);
	pstmt.setInt(7, seq);
	
	// query 실행
	pstmt.executeUpdate();
	
	// 연결 종료
	pstmt.close();
	conn.close();
	
	// redirect
	response.sendRedirect("list.jsp");
%>