<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>JS:function-return2</title>
	<script>
		function test() {
			var n = cal();
			alert(n);
		}
		function cal() {
			return 99;
		}
	</script>
</head>
<body>
	
	<!-- 리턴값이 사용되기 위한 예시 -->
	<div onclick="test()">Click Me</div>
	
</body>
</html>