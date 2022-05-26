<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>display 2</title>
<link rel="stylesheet" type="text/css" href="style.css">
<style>
	body {
		font-family:'Goyang';
		font-size:24px;
	}
	span {
		width:160px;
		height:40px;
		border:1px solid darkorange;
	}
	#aa {
		display:block;
	}
	#bb {
		display:inline-block; /* inline-block: inline속성에 block의 속성이 추가됨 */
	}
</style>
</head>
<body>
	<!-- display => block, inline, inline-block -->
	<span id="aa">Lorem ipsum</span>
	<span id="aa">Lorem ipsum</span>
	<span id="aa">Lorem ipsum</span>
	<span id="aa">Lorem ipsum</span>
	<hr>
	
	<span id="bb">Lorem ipsum</span>
	<span id="bb">Lorem ipsum</span>
	<span id="bb">Lorem ipsum</span>
	<span id="bb">Lorem ipsum</span>
	<hr>
	
</body>
</html>