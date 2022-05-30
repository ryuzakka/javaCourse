<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>rotate</title>
	<style>
		div {
			width:100px;
			height:100px;
			background:pink;
			margin-bottom:40px;
		}
		#bb {
			transform:rotate(30deg);
		}
		#cc {
			transform:rotate(79deg);
		}
		#dd {
			transform:rotate(170deg);
		}
	</style>
</head>
<body>
	<!-- css에서 동적인 효과를 주는 속성 : rotate, scale, translate, skew -->
	<div id="aa">Lorem ipsum</div><p>
	<div id="bb">Lorem ipsum</div><p>
	<div id="cc">Lorem ipsum</div><p>
	<div id="dd">Lorem ipsum</div><p>
</body>
</html>