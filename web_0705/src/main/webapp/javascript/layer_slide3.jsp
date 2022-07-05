<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>second</title>
<style>
	body {
		margin:0px;
	}
	#first {
		width:1000px;
		height:30px;
		background:purple;
		color:white;
		margin:auto;
		text-align:right;
	}
	#second {
		width:1000px;
		height:50px;
		background:yellow;
		margin:auto;
		text-align:right;
	}
	#third {
		width:1000px;
		height:100px;
		background:green;
		margin:auto;
		text-align:right;
	}
</style>
<script>
	function hide1() {
		var height = 30;
		/* id가 first인 요소의 height를 1씩 감소 */
		var ss = setInterval(function(){
			height--;
			document.getElementById('first').style.height = height+"px";
			if(height == 0) {
				clearInterval(ss);
				document.getElementById('first').style.display = "none";
			}
		},10);
	}
	
	function hide2() {
		var height = 50;
		var ss = setInterval(function(){
			height--;
			document.getElementById("second").style.height = height+"px";
			if(height == 0) {
				clearInterval(ss);
				document.getElementById("second").style.display = "none";
			}
		},10);
	}
	
	function hide3() {
		var height = 100;
		var ss = setInterval(function(){
			height--;
			document.getElementById("third").style.height = height+"px";
			if(height == 0) {
				clearInterval(ss);
				document.getElementById("third").style.display = "none";
			}
		},10);
	}
	
</script>
</head>
<body>	<!-- 0705/layer_slide3.jsp -->
	
	<div id="first"> <span onclick="hide1()">close</span> </div>
	<div id="second"> <span onclick="hide2()">close</span> </div>
	<div id="third"> <span onclick="hide3()">close</span> </div>
	
</body>
</html>