<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>0624/object2</title>
</head>
<body>	<!-- 0624/object2.jsp -->
	
	<%
		out.println(request.getAttribute("name"));	// request영역에 name이라는 변수의 값을 가져와라
		out.println(pageContext.getAttribute("name"));
		out.println(session.getAttribute("name"));
		out.println(application.getAttribute("name"));
	%>
	
</body>
</html>