<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java_baepo.MyJob" %>
<% 
	MyJob mj = new MyJob();
	mj.input(50, 70, 90);
	mj.cal();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	총점 : <%=mj.getTot()%>
	평균 : <%=mj.getAvg()%>
	
</body>
</html>