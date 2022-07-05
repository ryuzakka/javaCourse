<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>screen</title>
<script>
	function func1() {
		// 해상도
		console.log(screen.width + " " + screen.height);
	}
	function func2() {
		// 실사용 가능한 해상도
		console.log(screen.availWidth + " " + screen.availHeight);
	}
	function func3() {
		// 브라우저(창)의 가로세로
		console.log(window.innerWidth + " " + window.innerHeight);
		console.log(document.documentElement.clientWidth + " " + document.documentElement.clientHeight);
	}
	function func4() {
		// 문서의 body의 가로세로
		console.log(document.body.clientWidth + " " + document.body.clientHeight);
	}
</script>
</head>
<body>	<!-- 0705/screen.jsp -->
	
	<!-- screen 객체 -->
	<input type="button" onclick="func1()" value="screen 가로세로1"><p>
	<input type="button" onclick="func2()" value="screen avail 가로세로2"><p>
	<input type="button" onclick="func3()" value="window inner 가로세로3"><p>
	<input type="button" onclick="func4()" value="document body 가로세로4"><p>
	
</body>
</html>