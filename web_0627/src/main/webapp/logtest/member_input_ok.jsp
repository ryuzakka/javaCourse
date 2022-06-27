<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	Class.forName("com.mysql.jdbc.Driver");
	String db ="jdbc:mysql://localhost:3306/board_test";
	Connection conn = DriverManager.getConnection(db, "root", "5032");
	
	request.setCharacterEncoding("UTF-8");
	String userid = request.getParameter("userid");
	String pwd = request.getParameter("pwd");
	String name = request.getParameter("name");
	String phone = request.getParameter("phone");
	String zip = request.getParameter("zip");
	String juso1 = request.getParameter("juso1");
	String juso2 = request.getParameter("juso2");
	
	String sql = "insert into member2(userid,pwd,name,phone,zip,juso1,juso2,writeday) ";
	sql += "values(?,?,?,?,?,?,?,now())";
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, userid);
	pstmt.setString(2, pwd);
	pstmt.setString(3, name);
	pstmt.setString(4, phone);
	pstmt.setString(5, zip);
	pstmt.setString(6, juso1);
	pstmt.setString(7, juso2);
	
	pstmt.executeUpdate();
	
	pstmt.close();
	conn.close();
	
	response.sendRedirect("login.jsp");
%>