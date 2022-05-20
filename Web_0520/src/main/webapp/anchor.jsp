<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Anchor Test</title>
	</head>
	<body>
		<div>
			<a href="my.jsp" target="_blank"><img src="Penguins.jpg"></a>
		</div>
		<div>
			<a href="https://naver.com" target="_blank"> NAVER로 이동하기 </a>
		</div>
		<div>
			<a href="javascript:test()"> JavaScript 호출 </a>
		</div>
		
	</body>
	<script>
		function test() {
			alert("Hi?");
		}
	</script>
</html>