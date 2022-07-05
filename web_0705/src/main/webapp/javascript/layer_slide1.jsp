<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>first</title>
<style>
	#dhr {
		position:absolute;
		left:-300px;
		width:300px;
		height:200px;
		background:orange;
	}	/* 레이어의 위치를 브라우저 좌측에 숨김 */
</style>
<script>
	var left = -300;
	var ss;
	
	function move() {
		/* 1px씩 이동시키는 함수 */
		left++;
		document.getElementById("dhr").style.left = left+"px";
		if(left == 0) {
			clearInterval(ss);
		}
	}
	function init() {
		/* 레이어를 사용자가 볼 수 있게 오른쪽으로 이동을 시킨다. */
		ss = setInterval(move,10);
	}
	function layer_close() {
		document.getElementById("dhr").style.display = "none";
	}
</script>
</head>
<body onload="init()">	<!-- 0705/layer_slide1.jsp -->
	
	<div id="dhr">
		여기는 공지사항
		<div align="right" onclick="layer_close()"> X </div>
	</div>
	
</body>
</html>