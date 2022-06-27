<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>0627/move2</title>
<style>
	#aa {
		position:absolute;
		left:100px;
		top:200px;
		width:140px;
		height:140px;
		background:orange;
	}
</style>
<script>
	var left = "100";
	var ss;
	function move() {
		left++;
		document.getElementById('aa').style.left = left+"px";
		document.getElementById('aa').innerText = left+"px";
		if(left == 400)
			stop();
	}
	function start() {
		ss = setInterval(move, 20);
	}
	function stop() {
		// 위에서 동작시킨 start()함수 내에 있는 setInterval을 중지
		clearInterval(ss);	// 괄호 내에 멈추고 싶은 setInterval의 객체명이 들어가야 한다. 
	}
</script>
</head>
<body>	<!-- 0627/move2.jsp -->
	
	<!-- setInterval을 이용하여 레이어의 left값이 400이 됐을 때 멈추기 -->
	<div id="aa"> </div> <p>
	<input type="button" value="Click Me to Start!" onclick="start()"><br>

	
</body>
</html>