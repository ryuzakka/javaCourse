<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>img view2</title>
<style>
	#dhr {
		display:none;
	}
</style>
<script>
	function change(src) {
		document.getElementById('dhr').src = src;
		document.getElementById('dhr').style.display = "block";
	}
</script>
</head>
<body>	<!-- 0706/img_view.jsp -->
	
	<a href="javascript:change('bg1.jpg')"> 그림1 </a>
	<a href="javascript:change('bg2.jpg')"> 그림2 </a>
	<span onclick="change('bg3.jpg')"> 그림3 </span>
	<span onclick="change('bg4.jpg')"> 그림4 </span>
	<hr>
	<img src="" id="dhr" width="300" height="200">
	
</body>
</html>