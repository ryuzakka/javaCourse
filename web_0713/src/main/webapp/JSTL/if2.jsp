<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl/if 2</title>
</head>
<body>
	
	<!-- 국어 점수가 60점 이상이면 합격, else 불합격 -->
	<c:set var="kor" value="50" />
	
	<c:if test="${kor >= 60}">
		합격 !
	</c:if>
	<c:if test="${kor < 60}">
		불합격 !
	</c:if>
	
	
</body>
</html>