<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>first2</title>
</head>
<body>
	<!-- 문서 이동할 때 값을 전달하기 -->
	
	<!-- 1. a태그 -->
	<a href="second2.jsp?num=99&name=배트맨">a로 second2 이동</a><p>
	<hr>
	
	<!-- 2. javascript -->
	<span onclick="move()">js로 second2 이동</span><p>
	<hr>
	<script>
		function move() {
			location = "second2.jsp?num=88&name=홍길동";
		}
	</script>
	
	<!-- 3. form태그 -->
	<form method="post" action="second2.jsp">
		<input type="text" name="num" size="4">
		<input type="text" name="name" size="4">
		<input type="submit" value="form으로 second2 이동">
	</form>
	
</body>
</html>