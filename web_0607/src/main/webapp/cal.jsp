<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cal</title>
</head>
<body>
	<!-- 총점과 평균을 구하기 -->
	
	<%
	int kor = Integer.parseInt(request.getParameter("kor"));
	int eng = Integer.parseInt(request.getParameter("eng"));
	int mat = Integer.parseInt(request.getParameter("mat"));
	int sum = kor + eng + mat;
	int avg = sum / 3;
	
	out.print("총점 : " + sum);
	out.print("<p>");
	out.print("평균 : " + avg);
	%>
	
</body>
</html>