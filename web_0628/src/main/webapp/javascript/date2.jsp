<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>date2</title>
<script>
	function input() {
		var today = new Date();
		var hh = today.getHours();
		var mm = today.getMinutes();
		var ss = today.getSeconds();
		
		document.getElementById("aa").innerText = hh+":"+mm+":"+ss;
	}
	function start() {
		setInterval(input,1000);
	}
</script>
</head>
<body>	<!-- 0628/date2.jsp -->
	
	Now : <span id="aa"></span> <p>
	<input type="button" onclick="start()" value="Click Me to know What time is it!">
	
</body>
</html>