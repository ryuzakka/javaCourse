<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="member.Member_Dao" %>
<%@ page import="java.sql.*" %>
<%
	String id = request.getParameter("id");

	Member_Dao mdao = new Member_Dao();
	
	ResultSet rs = mdao.select(id);
	rs.next();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>member_update</title>
</head>
<body>	<!-- 0704/update.jsp -->
	
	<form method="post" action="update_ok.jsp">
		<input type="hidden" name="id" value="<%=rs.getString("id")%>">
		<input type="text" name="name" placeholder="이름" value="<%=rs.getString("name")%>"> <p>
		<input type="text" name="age" placeholder="나이" value="<%=rs.getString("age")%>"> <p>
		<input type="submit" value="입력완료">
	</form>
	
</body>
</html>
<%
	rs.close();
	mdao.close();
%>