<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>0623js/mousemove</title>
<script>
	function move() {
		var x = event.pageX;
		var y = event.pageY;
		document.getElementById("aa").innerText = x + " " + y;
		document.getElementById("bb").style.left = x+"px";
		document.getElementById("bb").style.top = y+"px";
	}
	document.onmousemove = move;
</script>
<style>
	#bb {
		position:absolute;
	}
</style>
</head>
<body>	<!-- 0623js/mousemove -->
	<!-- mousemove : 마우스가 움직일 때 발생하는 이벤트 -->
	<div id="aa"></div>
	<div id="bb">****</div>
	
</body>
</html>