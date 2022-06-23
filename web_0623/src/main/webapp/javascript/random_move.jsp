<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>0623js/random_move</title>
<style>
	#dhr {
		position:absolute;
		width:70px;
		height:25px;
		background:pink;
		color:white;
	}
</style>
<script>

	var r = 1;
	function move() {
		
		if(r == 1) {			
			var x = window.innerWidth;	// 브라우저의 가로크기
			var y = window.innerHeight;	// 브라우저의 세로크기
			
			var xx = Math.random() * x;	// 0 ~ 브라우저 가로크기 사이의 임의의 값
			var yy = Math.random() * y;	// 0 ~ 브라우저 세로크기 사이의 임의의 값
			
			document.getElementById("dhr").style.left = xx + "px";
			document.getElementById("dhr").style.top = yy + "px";
		}
	}
	function ok() {
		alert("성공");
	}
	function chk() {
		if(event.button == 2) {	// 마우스 우클릭
			r = 2;
		}
		else {	// 마우스 좌클릭
			r = 1;
		}
	}
	document.onmousedown = chk;
	document.oncontextmenu = function() {
		return false;	// 우클릭 메뉴 안뜨게 방지
	}
	
</script>
</head>
<body>	<!-- 0623js/random_move -->
	
	<div id="dhr" onmouseover="move()" onclick="ok()">Click Me!</div>
	
</body>
</html>