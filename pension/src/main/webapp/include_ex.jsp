<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script>
	$(function(){
		$('#dhr').load("temp.jsp");
	});
</script>
</head>
<body>
	<!-- include : 현재 문서에 다른 문서의 내용을 포함시키는 방법 -->

	<!-- 1번째. 스크립틀릿 -->
	<%@ include file="temp.jsp" %>
	<hr>
	
	<!-- 2번째. jstl -->
	<c:import url="temp.jsp" />
	<hr>
	
	<!-- 3번째. jsp의 액션태그. 최근들어 거의 사용하지 않는 추세 -->
	<jsp:include page="temp.jsp" />
	<hr>
	
	<!-- 4번째. 제이쿼리 -->
	<div id="dhr"></div>
	<hr>
	
</body>
</html>