<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>0624/index</title>
</head>
<body>	<!-- 0624/index -->
	
	<%
		/* 기본자료형 형태의 클래스 (Wrapper Class) */
		// Byte, Short, Integer, Long, Double, Float, Boolean, Charactor
	%>
	
	<%
		// 이 문서를 접근할 때 마다 application의 수를 증거
		String tmp = application.getAttribute("inwon").toString(); // toString() : 클래스를 문자열로 전달
		Integer num = new Integer(tmp);
		out.print(num + "<br>");
		
		num++;
		application.setAttribute("inwon", num);
		
		out.print(num);
	%>
	
</body>
</html>