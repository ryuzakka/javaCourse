<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>0615/form_ex4</title>
<style>
	hr {
		border-width:2px;
		border-color:hotpink;
		background:pink;
	}
</style>
</head>
<body>
	<!-- 하나의 폼태그는 하나의 문서로 전달 -->
	<hr>
	<form method="post" action="a.jsp">
		<input type="submit" value="To A">
	</form>
	<hr>
	<form method="post" action="b.jsp">
		<input type="submit" value="To B">
	</form>
	<hr>
	<form method="post" action="c.jsp">
		<input type="submit" value="To C">
	</form>
	<hr>
</body>
</html>