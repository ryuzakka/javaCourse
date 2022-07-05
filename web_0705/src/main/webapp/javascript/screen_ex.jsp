<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>screen ex</title>
<style>
	body {
		margin:0px;
	}
	#dhr {
		position:absolute;
		/* left:px; */
		/* top:px; */
		width:200px;
		height:100px;
		background:red;
	}
</style>
<script>
	function init() {
		
		// 가로 길이 계산
		var bw = innerWidth;
		var tw = 200;
		var left = (bw/2) - (tw/2);
		
		// 세로 길이 계산
		var bh = innerHeight;
		var th = 100;
		var top = (bh/2) - (th/2);
		
		// 계산한 값 적용
		document.getElementById("dhr").style.left = left+"px";
		document.getElementById("dhr").style.top = top+"px";

	}
	
	window.onresize = init;		// 브라우저 리사이징 할 때마다 함수 호출
</script>
</head>
<body onload="init()">	<!-- 0705/screen_ex.jsp -->
	
	<div id="dhr"></div>
	
</body>
</html>