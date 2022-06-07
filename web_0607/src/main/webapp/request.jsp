<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>request</title>
</head>
<body>
	
	<%
	out.print(request.getMethod()+"<p>");
	out.print(request.getRealPath("/")+"<p>");
	out.print(request.getRequestURL()+"<p>");
	out.print(request.getRequestURI()+"<p>");
	out.print(request.getProtocol()+"<p>");
	out.print(request.getServerName()+"<p>");
	out.print(request.getServerPort()+"<p>");
	out.print(request.getRemoteAddr()+"<p>");
	%>
	
</body>
</html>