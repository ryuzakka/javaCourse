<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>left right</title>
<style>
	#dhr {
		width:1000px;
		height:30px;
		background:white;
		position:relative;
	}
	#over {
		position:absolute;
		top:5px;
		color:white;
		z-index:2;
	}
	#down {
		position:absolute;
		left:0px;
		top:0px;
		width:100px;
		height:30px;  /* 본문과 맞추기 */
		background:hotpink;
		z-index:1;
	}
</style>
<script>
	var left = 0;
	var ss;
	function moveRight() {
		left++;
		document.getElementById('down').style.left = left+"px";
		if(left > 900) {
			clearInterval(ss);
			ss = setInterval(moveLeft,5);
		}
	}
	function moveLeft() {
		left--;
		document.getElementById('down').style.left = left+"px";
		if(left < 1) {
			clearInterval(ss);
			ss = setInterval(moveRight,5);
		}
	}
	function start() {
		ss = setInterval(moveRight,5);
	}
</script>
</head>
<body onload="start()">	<!--  -->
	
	<div id="dhr">
		<div id="over">
			Lorem ipsum dolor sit amet, consectetur adipiscing elit, 
			sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
		</div>
		<div id="down"></div>
	</div>
	
</body>
</html>