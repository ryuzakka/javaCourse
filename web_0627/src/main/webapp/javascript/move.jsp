<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>0627js/move</title>
<style>
	#aa {
		width:100px;
		height:100px;
		border:1px solid red;
	}
</style>
<script>
	var w = 100;
	
	function move() {
		w++;
		document.getElementById("aa").style.width = w + "px";
	}
	
	function start1() {
		setTimeout(move, 50);	// move함수를 50(1/1000초) 시간 뒤에 한번 실행
	}
	
	function start2() {
		setInterval(move,50);	// move함수를 50(1/1000초) 시간 마다 계속 실행
	}
</script>
</head>
<body>	<!-- 0627js/move.jsp -->
	
	<div id="aa"></div>
	
	<input type="button" onclick="start1()" value="이동">
	<input type="button" onclick="start2()" value="이동">
	
</body>
</html>