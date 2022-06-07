<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1. 성적</title>
</head>
<body>
	<%
	int score = Integer.parseInt(request.getParameter("score"));
	
	if(score > 89)
		out.print("A");
	else if(score > 79)
		out.print("B");
	else if(score > 69)
		out.print("C");
	else if(score > 59)
		out.print("D");
	else if(score > 49)
		out.print("E");
	else
		out.print("F");
	%>
</body>
</html>