<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>0627/auto display</title>
<style>
	#aa {
		position:absolute;
		left:200px;
		top:100px;
		width:300px;
		height:200px;
		background:purple;
		color:white;
	}
</style>
<script>
	function hide() {
		document.getElementById("aa").style.visibility = "hidden";
	}
	function test() {
		setTimeout(hide, 5000);	// 5초 후에 hide함수 실행
	}
</script>
</head>
<body onload="test()">	<!-- 0627js/auto_display.jsp -->
	
	<div id="aa">
		중요 사항입니다. <br>
		오늘은 월요일 입니다.<br>
		열심히 합시다.
	</div>
	
</body>
</html>