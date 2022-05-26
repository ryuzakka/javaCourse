<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>display visibility</title>
<link rel="stylesheet" type="text/css" href="style.css">
<style>
	body {
		font-family:'Goyang';
		font-size:24px;
	}
	.aa {
		display:none;
	}
	.bb {
		visibility:hidden;
	}
</style>
</head>
<body>
	<!-- 요소를 숨기는 속성 : display, visibility 둘다 가능 -->
	
	<div class="bb">Lorem ipsum</div> <p>
	<div class="bb">Lorem ipsum</div> <p>
	<hr>
	<div class="bb">짜장면</div>
	<div class="">탕수육</div>
	<div class="">팔보채</div>
	<div class="">꿔바로우</div>
	<hr>
	<div class="bb">짜장면</div>
	<div class="aa">탕수육</div>
	<div class="">팔보채</div>
	<div class="">꿔바로우</div>
	<hr>
</body>
</html>