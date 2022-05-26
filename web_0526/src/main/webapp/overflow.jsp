<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>overflow</title>
	<link rel="stylesheet" type="text/css" href="style.css">
	<style>
		body {
			font-family:'Goyang';
			font-size:24px;
		}
		div {
			width:200px;
			height:70px;
			border:1px solid black;
		}
		p {
			padding-bottom:30px;
			margin-bottom:20px;
		}
		#aa {
			overflow:auto;
		}
		#bb {
			overflow:scroll;
		}
		#cc {
			overflow:hidden;
		}
		#dd {
			overflow-y:scroll;
		}
	</style>
</head>
<body>
	<!-- overflow:값; 특정영역에 내부의 내용이 넘칠경우 -->
	<div id="aa">&lt;overflow:auto&gt;<br>Lorem ipsum dolor sit amet</div> <p>
	<div id="bb">&lt;overflow:scroll&gt;<br>Lorem ipsum dolor sit amet</div> <p>
	<div id="cc">&lt;overflow:hidden&gt;<br>Lorem ipsum dolor sit amet</div> <p>
	<div id="dd">&lt;overflow-y:scroll&gt;<br>Lorem ipsum dolor sit amet</div> <p>
	
</body>
</html>