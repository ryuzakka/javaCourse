<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>function4</title>
	<script>
		// 1에서 100까지의 합을 구하는 함수
		function sum(n) {
			alert(n+"번 버튼");
		}
	</script>
</head>
<body>
	<input type="button" value="1번버튼" onclick="sum(1)">
	<input type="button" value="2번버튼" onclick="sum(2)">
	<input type="button" value="3번버튼" onclick="sum(3)">
</body>
</html>