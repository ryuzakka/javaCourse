<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>date</title>
<script>
	function getTime() {
		var intv = setInterval(function(){
			var today = new Date();
			var y = today.getFullYear();
			var m = today.getMonth()+1;	// 0~11
			var d = today.getDate();
			var hh = today.getHours();
			var mm = today.getMinutes();
			var ss = today.getSeconds();
			var time = y+"년 " + m+"월 " + d+"일 " + hh+"시 " + mm+"분 " + ss+"초";
			
			document.getElementById('time').innerText = time;			
		},1000);
	}
</script>
</head>
<body>	<!-- 0628/date.jsp -->
	<input type="button" value="시간 확인" onclick="getTime()"> <p>
	<div id="time"></div>
</body>
</html>