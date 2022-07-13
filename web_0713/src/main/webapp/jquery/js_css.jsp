<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>js css</title>
<script>
	window.onload = function(){
		document.getElementById("aa").style.color = "red";
		document.getElementsByClassName('aa')[0].style.color = "blue";
		document.getElementsByTagName('span')[0].style.color = "green";
	};
</script>
</head>
<body>
	
	<div id="aa">Lorem ipsum1</div> <p>
	<div class="aa">Lorem ipsum2</div> <p>
	<span>Lorem ipsum3</span> <p>
	<hr>
	<div id="aa">Lorem ipsum4</div> <p>
	<div class="aa">Lorem ipsum5</div> <p>
	<span>Lorem ipsum6</span> <p>
	
</body>
</html>