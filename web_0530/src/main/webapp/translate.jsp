<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>translate</title>
	<style>
		div {
			width:100px;
			height:100px;
			background:pink;
			margin-bottom:40px;
			position:absolute;
		}
		#aa {
			transform:translate(0px,0px);
		}
		#bb {
			transform:translate(300px,300px);
		}
		#cc {
			transform:translateX(150px);
		}
		#dd {
			transform:translateY(400px);
		}
	</style>
</head>
<body>
	<div id="aa">aa<br>Lorem ipsum</div> <p>
	<div id="bb">bb<br>Lorem ipsum</div> <p>
	<div id="cc">cc<br>Lorem ipsum</div> <p>
	<div id="dd">dd<br>Lorem ipsum</div> <p>
</body>
</html>