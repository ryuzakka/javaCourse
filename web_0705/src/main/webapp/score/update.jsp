<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="score.Sungjuk_Dao" %>
<%@ page import="java.sql.ResultSet" %>
<%
	Sungjuk_Dao dao = new Sungjuk_Dao();
	
	ResultSet rs = dao.getValue(request);
	rs.next();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>update</title>
</head>
<body>
	
	<form method="post" action="update_ok.jsp">
		<caption>
			<h2>학생 정보수정</h2>
		</caption>
		<input type="hidden" name="id" value="<%=rs.getInt("id") %>">
		<input type="text" name="name" placeholder="이름" value="<%=rs.getString("name") %>" required><p>
		<input type="text" name="kor" placeholder="국어점수" value="<%=rs.getInt("kor") %>" required><p>
		<input type="text" name="eng" placeholder="영어점수" value="<%=rs.getInt("eng") %>" required><p>
		<input type="text" name="mat" placeholder="수학점수" value="<%=rs.getInt("mat") %>" required><p>
		<input type="submit" value="입력하기">
	</form>
	
</body>
</html>
<%
	rs.close();
	dao.close();
%>