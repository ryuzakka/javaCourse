<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>first2</title>
<style>
	#dhr {
		position:absolute;
		left:-300px;
		width:300px;
		height:200px;
		background:yellow;
	}	/* 레이어의 위치를 브라우저 좌측에 숨김 */
	#dhr2 {
		position:absolute;
		top:-40px;
		width:1000px;
		height:40px;
		background:pink;
		visibility:hidden;
	}
</style>
<script>
	function init() {
		/* 레이어를 사용자가 볼 수 있게 오른쪽으로 이동을 시킨다. */
		
		var left = -300;
		var ss = setInterval(function() {
			left++;
			document.getElementById("dhr").style.left = left+"px";
			if(left == 0) {
				clearInterval(ss);
			}
		},10);
	}
	
	function layer_close() {
		var left = 0;
		var ss = setInterval(function(){
			left--;
			document.getElementById('dhr').style.left = left+"px";
			if(left == -300) {
				clearInterval(ss);
				second_open();
			}
		},5)
		//document.getElementById("dhr").style.display = "none";
		
	}
	
	function second_open() {
		document.getElementById("dhr2").style.visibility = "visible";
		
		var top = -40;
		var ss = setInterval(function() {
			top++;
			document.getElementById("dhr2").style.top = top+"px";
			if(top == 0) {
				clearInterval(ss);
			}
		},10);
	}
	
	function second_close() {
		var top = 0;
		var ss = setInterval(function(){
			top--;
			document.getElementById("dhr2").style.top = top+"px";
			if(top == -40) {
				clearInterval(ss);
			}
		},5)
		//document.getElementById("dhr2").style.display = "none";
	}
	
</script>
</head>
<body onload="init()">	<!-- 0705/layer_slide1.jsp -->
	
	<div id="dhr">
		여기는 공지사항
		<div align="right" onclick="layer_close()"> X </div>
	</div>
	
	<div id="dhr2">
		두번째 공지사항
		<div align="right" onclick="second_close()"> X </div>
	</div>
	
</body>
</html>