<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<style>
		p {
			margin-bottom:30px;
		}
		#aa {
			border-style:solid;
			border-color:hotpink;
			border-width:2px;
		}
		#bb {
			border-top-style:dotted;
			border-top-color:blue;
			border-top-width:2px;
			border-bottom-style:dotted;
			border-bottom-color:blue;
			border-bottom-width:2px;
		}
		#cc {
			border-top:solid pink 2px;
			border-bottom:double hotpink 3px;
		}
	</style>
</head>
<body>
	<!-- 외곽선의 모양을 각각의 방향마다 다르게 하기 -->
	<div id="aa">Lorem ipsum dolor sit amet</div> <p>
	<div id="bb">Lorem ipsum dolor sit amet</div> <p>
	<div id="cc">Lorem ipsum dolor sit amet</div> <p>
	
</body>
</html>