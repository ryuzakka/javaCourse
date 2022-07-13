<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl/set 2</title>
</head>
<body>
	
	<!-- set태그를 이용하여 값의 증가 -->
	<c:set var="i" value="1" />
	${i} <p>
	${i+1} <p>	<!-- el안에서 값을 더해도 저장되지는 않는다. -->
	${i} <p>
	<hr>
	
	<!-- 증가된 값 저장 -->
	<c:set var="i" value="${i+1}" />
	${i} <p>
	<hr>
	
	<!-- 문자 추가 -->
	<c:set var="i" value="${i} 개" />
	${i}
	
</body>
</html>