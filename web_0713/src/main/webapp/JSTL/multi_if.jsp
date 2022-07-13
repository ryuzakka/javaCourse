<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl/multi if</title>
</head>
<body>
	
	<!-- 국어점수를 가지고 성적을 출력 (A,B,C,D,F) -->
	<c:set var="kor" value="59" />
	
	국어 성적 : 
	<c:if test="${kor >= 90}" >
		A <p>
	</c:if>
	<c:if test="${kor < 90 && kor >= 80}" >
		B <p>
	</c:if>
	<c:if test="${kor < 80 && kor >= 70}" >
		C <p>
	</c:if>
	<c:if test="${kor < 70 && kor >= 60}" >
		D <p>
	</c:if>
	<c:if test="${kor < 60}" >
		F <p>
	</c:if>
	
	
</body>
</html>