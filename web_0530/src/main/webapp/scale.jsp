<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Scale</title>
	<style>
		div {
			width:100px;
			height:100px;
			background:pink;
			margin-bottom:40px;
		}
		#bb {
			position:absolute;
			left:200px;
			transform:scale(2,2);
		}
		#cc {
			position:absolute;
			left:400px;
			transform:scaleY(2);
		}
		#dd {
			transform:scale(0.6,0.6);
		}
	</style>
</head>
<body>
	<!-- scale -->
	<div id="aa"><span>aa</span><p>Lorem ipsum</div>
	<div id="bb"><span>bb</span><p>Lorem ipsum</div>
	<div id="cc"><span>cc</span><p>Lorem ipsum</div>
	<div id="dd"><span>dd</span><p>Lorem ipsum</div>

</body>
</html>