<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl/forEach 2</title>
</head>
<body>	<!-- forEach.jsp -->
	
	<!-- 반복횟수를 알지 못할 경우 : while처럼 사용하기 -->
	
	<%
	// 스크립틀릿에서 for를 사용하는 예시
	String[] name = {"앤트맨", "스파이더맨", "배트맨", "매드맨", "아이롱맨"};
	request.setAttribute("name", name);
	
	for(int i=0; i<name.length; i++)
		out.print(name[i]+" ");
	%>
	<hr>
	
	<!-- forEach를 이용하여 출력 (배열의 크기가 고정인 경우) -->
	<c:forEach var="i" begin="0" end="3">
		${name[i]}
	</c:forEach>
	<hr>
	
	<!-- forEach를 이용하여 출력 (배열의 크기가 일정하지 않은 경우) -->
	<c:forEach items="${name}" var="hero">
		${hero}
	</c:forEach>
	
	
</body>
</html>