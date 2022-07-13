<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl/choose</title>
</head>
<body>
	
	<!-- choose.jsp -->
	<c:set var="kor" value="88" />
		국어 성적 = 
	<c:choose>
		<c:when test="${kor >= 90}">
			A <p>
		</c:when>
		<c:when test="${kor >= 80}">
			B <p>
		</c:when>
		<c:when test="${kor >= 70}">
			C <p>
		</c:when>
		<c:when test="${kor >= 60}">
			D <p>
		</c:when>
		<c:otherwise>
			F <p>
		</c:otherwise>
	</c:choose>
	
</body>
</html>