<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>function2</title>
	<style>
		div {
			width:150px;
			height:150px;
			background:pink;
		}
		div:hover {
			background:hotpink;
		}
	</style>
	<script>
		function test() {
			alert("hi?");
		}
	</script>
</head>
<body>
	<!-- 
		[ function 호출하기 ]
		1. script태그 내에서 함수를 호출
		2. 태그 요소 내에서 함수를 호출
			:태그 내에 이벤트핸들러 = "함수명()"
					on이벤트
	-->
	<input type="button" onclick="test()" value="click me!"><p>
	<div onclick="test()">click me!</div><p>
	<span onclick="test()">click me!</span><p>

</body>
</html>