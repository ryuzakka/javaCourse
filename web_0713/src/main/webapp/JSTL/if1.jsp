<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl/if 1</title>
</head>
<body>
	
	<!-- if문 -->
	<c:if test="true">
		hi~ <p>
	</c:if>
	
	<!-- 거짓은 실행되지 않으며, 페이지소스 보기 에도 나타나지 않는다. -->
	<c:if test="false">
		bye~ <p>
	</c:if>
	
	
</body>
</html>