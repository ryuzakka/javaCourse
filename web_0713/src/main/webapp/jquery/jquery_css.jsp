<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jquery css</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script>
	
	$(function(){
		$('#aa').css("color","hotpink");
		$('.aa').css("color","skyblue");
		$('span').css("color","green");
	});
	
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