<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>date3</title>
<script>
	function clock1() {
		var today = new Date();
		var hh = today.getHours().toString();
		var mm = today.getMinutes().toString();
		var ss = today.getSeconds().toString();
		
		if(hh.length == 1)
			hh = "0"+hh;
		if(mm.length == 1)
			mm = "0"+mm;
		if(ss.length == 1)
			ss = "0"+ss;
		document.getElementById("aa").innerText = hh+":"+mm+":"+ss;
	}
	function clock2() {
		var date = new Date();
		//PadStart();
		var shh = String(date.getHours()).padStart(2,"0");
		var smm = String(date.getMinutes()).padStart(2, "0");
		var sss = String(date.getSeconds()).padStart(2, "0");
		
		document.getElementById('bb').innerText = shh+":"+smm+":"+sss;
	}
	function start() {
		setInterval(clock1,1000);
		setInterval(clock2,1000);
	}
</script>
</head>
<body>	<!-- 0628/date3.jsp -->
	
	Clock1 : <span id="aa"></span> <p>
	Clock2 : <span id="bb"></span> <p>
	<input type="button" onclick="start()" value="Click Me to know What time is it!">
	
</body>
</html>