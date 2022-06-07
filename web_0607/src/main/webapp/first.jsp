<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>first</title>
</head>
<body>
	<!-- 웹에서 A문서(first)에서 B문서(second)로 이동하는 방법 
		1. a 태그를 이용한 이동
		2. javascript를 이용한 이동
		3. form태그를 이용한 이동
	-->
	
	<!-- 1. a 태그를 이용한 이동 -->
	<a href="second.jsp">1. second로 이동</a><p>
	<hr>
	
	<!-- 2. javascript를 이용한 이동 -->
	<span onclick="move()">2. second로 이동</span><p>
	<hr>
	<script>
		function move() {
			location = "second.jsp";
		}
	</script>
	
	<!-- 3. form태그를 이용한 이동 -->
	<form method="post" action="second.jsp">
		<input type="submit" value="3. second로 이동">
	</form>
	
</body>
</html>