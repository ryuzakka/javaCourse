<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl/out</title>
</head>
<body>	<!-- out.jsp -->
	
	<% request.setAttribute("name", "배트맨"); %>
	
	<!-- 출력하기 -->
	<c:out value="안녕하세요" /> <p>
	<c:out value="감사합니다"> </c:out> <p>
	<c:out value="${name}" /> <p>
	
	<!-- 출력할 때는 그냥 el을 쓰는게 더욱 간단하여 out은 잘 쓰지 않음 -->
	${name}	<p>
	<c:out value="${kor}" default="없음" /> <p>
	
	
</body>
</html>