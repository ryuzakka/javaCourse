<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<% 
	Class.forName("com.mysql.jdbc.Driver");
	String db = "jdbc:mysql://localhost:3306/board_test";
	Connection conn = DriverManager.getConnection(db, "root", "5032");
	
	String id = request.getParameter("id");
	String lunch = request.getParameter("lunch");
	
	/* switch문 없이 sql 한줄로 처리(1) : form의 value를 p번호로 변경했을 경우 */
	String sql3 = "update vote set " + lunch + "=" + lunch + "+1 where id=?";
	
	/* switch문 없이 sql 한줄로 처리(2) : value를 int로 처리 */
	//int food = Integer.parseInt(lunch);
	//food++;
	//String sql2 = "update vote set p"+food+"=p"+food+"+1 where id=?";
	
	/* switch문으로 조건별 처리 */
	String sql = "";
	switch(lunch) {
		case "0": sql = "update vote set p1=p1+1 where id=?"; break;
		case "1": sql = "update vote set p2=p2+1 where id=?"; break;
		case "2": sql = "update vote set p3=p3+1 where id=?"; break;
		case "3": sql = "update vote set p4=p4+1 where id=?"; break;
		case "4": sql = "update vote set p5=p5+1 where id=?"; break;
	}
	
	PreparedStatement pstmt = conn.prepareStatement(sql3);
	pstmt.setString(1, id);
	
	pstmt.executeUpdate();
	
	pstmt.close();
	conn.close();
	
	response.sendRedirect("vote_view.jsp");
	
%>