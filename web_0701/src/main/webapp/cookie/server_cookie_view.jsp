<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 쿠키를 읽어오기
	Cookie[] cookie = request.getCookies();
	out.print(cookie.length + "<p>");
	
	for(int i=0; i<cookie.length; i++) {
		out.print(cookie[i].getName());
		out.print(cookie[i].getValue());
		out.print("<p>");
		
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>server cookie view</title>
</head>
<body>	<!-- 0701/server_cookie_view.jsp -->
	
	<a href="server_cookie_del.jsp">쿠키 삭제</a>
	
</body>
</html>