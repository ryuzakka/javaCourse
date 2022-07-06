<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>img view</title>
<style>
	#dhr {
		display:none;
	}
</style>
<script>
	function show1() {
		document.getElementById("dhr").src = "bg1.jpg";
		document.getElementById('dhr').style.display = "block";
	}
	function show2() {
		document.getElementById('dhr').src = "bg2.jpg";
		document.getElementById('dhr').style.display = "block";
	}
	function show3() {
		document.getElementById('dhr').src = "bg3.jpg";
		document.getElementById('dhr').style.display = "block";
	}
	function show4() {
		document.getElementById('dhr').src = "bg4.jpg";
		document.getElementById('dhr').style.display = "block";
	}
</script>
</head>
<body>	<!-- 0706/img_view.jsp -->
	
	<span onclick="show1()">그림1</span>
	<span onclick="show2()">그림2</span>
	<span onclick="show3()">그림3</span>
	<span onclick="show4()">그림4</span>
	<hr>
	<img src="" id="dhr" width="300" height="200">
	
</body>
</html>