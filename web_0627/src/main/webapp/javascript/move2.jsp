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
	function move() {
		left++;
		document.getElementById('aa').style.left = left+"px";
	}
	function start() {
		setInterval(move, 15);
	}
</script>
</head>
<body>	<!-- 0627/move2.jsp -->
	
	<!-- setInterval을 이용하여 레이어의 left값 변경하기 -->
	<div id="aa"></div> <p>
	<input type="button" value="Click Me!" onclick="start()"><br>
	
</body>
</html>