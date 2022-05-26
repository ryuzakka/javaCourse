<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Text Shadow</title>
	<link rel="stylesheet" type="text/css" href="style.css">
	<style>
		body {
			font-family:'Goyang';
			font-size:24px;
		}
		#aa {
			text-shadow:7px 10px lightgrey;
		}
		#bb {
			text-shadow:-7px -10px grey;
		}
		#cc {
			text-shadow:12px 8px 3px lightblue;
		}
		#dd {
			text-shadow:12px 8px 15px lightgreen;
		}
	</style>
</head>
<body>
	<!-- text-shadow:x값 y값 (흐림도) 색 => 글자의 그림자 -->
	<div id="aa">Lorem ipsum dolor sit amet</div> <p>
	<div id="bb">Lorem ipsum dolor sit amet</div> <p>
	<div id="cc">Lorem ipsum dolor sit amet</div> <p>
	<div id="dd">Lorem ipsum dolor sit amet</div> <p>
</body>
</html>