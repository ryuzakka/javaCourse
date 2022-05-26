<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Border3</title>
	<style>
		div {
			width:200px;
			height:120px;
			border-style:solid;
			border-color:hotpink;
			border-width:2px;
		}
		#aa { border-radius:15px; }
		#bb { border-radius:35px; }
		#cc { border-radius:10px 40px; }
		#dd { border-radius:10px 30px 50px 70px; }
	</style>
</head>
<body>
	<!-- border-radius:값 => 외곽선의 둥글기 -->
	<div id="aa"></div> <p>
	<div id="bb"></div> <p>
	<div id="cc"></div> <p>
	<div id="dd"></div> <p>
</body>
</html>