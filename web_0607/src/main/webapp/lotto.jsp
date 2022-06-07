<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Random" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Lotto1</title>
</head>
<body>
	<%
		// 1~45까지의 임의의 값 발생시켜서 출력
		Random rand = new Random();
		int num = rand.nextInt(45) + 1;
		out.print(num);
	%>
</body>
</html>