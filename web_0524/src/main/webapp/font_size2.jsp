<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Font Size2</title>
	<style>
		b { font-size: 30px; }
		#a1 { font-size:4vw; }
		#a2 { font-size:4vh; }
		#a3 { font-size:0.8em; }
		#a4 { font-size:50%; }
	</style>
</head>
<body>

	<!-- font-size 단위별 크기 => %, em -->
	<span id="a1"> Lorem ipsum dolor sit amet </span> <p>
	<span id="a2"> Lorem ipsum dolor sit amet </span> <p>
	<b>
		<span id="a3"> Lorem ipsum dolor sit amet </span> <p>
		<span id="a4"> Lorem ipsum dolor sit amet </span> <p>
	</b>
	
</body>
</html>