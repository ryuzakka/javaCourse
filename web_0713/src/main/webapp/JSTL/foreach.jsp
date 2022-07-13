<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl/forEach</title>
</head>
<body>
	
	<!-- 반복문 : forEach -->
	10번 반복 : 
	<c:forEach var="i" begin="1" end="10" step="1">
		안녕하세요 <br>
	</c:forEach>
	<p><hr>
	
	<!-- 1900년부터 2022년까지 출력(select) --> 
	1900~2022 : 
	<select>
	<%	for(int i=1900; i<=2022; i++) { %>
		<option> <%=i%> </option>
	<%	} %>
	</select>
	
	<select>
		<c:forEach var="i" begin="1900" end="2022" step="1">
			<option> ${i} </option>
		</c:forEach>
	</select>
	<p><hr>
	
	<!-- 2022년부터 1900년까지 출력(select) --> 
	2022~1900 : 
	<select>
	<%	for(int i=2022; i>=1900; i--) { %>
		<option> <%=i%> </option>
	<%	} %>
	</select>
	
	<select>
		<c:forEach var="i" begin="0" end="122" step="1">
			<option> ${2022-i} </option>
		</c:forEach>
	</select>
	
	
</body>
</html>