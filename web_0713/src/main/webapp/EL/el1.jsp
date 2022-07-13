<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>el 1</title>
</head>
<body>

<%
	String name = "홍길동";
	int kor = 99;
	
	request.setAttribute("name", "Superman");
%>

<%=name%> <p>
<%=request.getAttribute("name")%>

</body>
</html>