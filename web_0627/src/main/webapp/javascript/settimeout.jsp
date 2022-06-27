<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>0627js/set time out</title>
<style>
	body {
		margin-top:50px;
		margin-left:60px;
		text-decoration:underline;
	}
</style>
<script>
	function move() {
		location = 'http://kurly.com';
	}
	function test() {
		setTimeout(move, 2000);		// move함수를 2000(1/1000초) 뒤에 실행하라
	}
</script>
</head>
<body>	<!-- 0627js/settimeout.jsp -->
	
	<!-- setTimeout() : 특정시간 후 함수를 호출 (시간 관련 함수) -->
	<span onclick="move()"> Move to Kurly </span> <p>
	<span onclick="test()"> test </span>
	
</body>
</html>