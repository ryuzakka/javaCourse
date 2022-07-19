<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<meta charset="UTF-8">
<title>width 1</title>
<style>
	#aa {
		width:200px;
		height:100px;
		border:5px solid tomato;
		background:lightsalmon;
		padding:10px;
	}
</style>
<script>
	$(function(){
		$('#btn1').click(function(){
			var wid = $('#aa').width();
			console.log(wid);
		});
		
		$('#btn2').click(function(){
			var wid = $('#aa').innerWidth();
			console.log(wid);
		});
		
		$('#btn3').click(function(){
			var wid = $('#aa').outerWidth();
			console.log(wid);
		});
	});
</script>
</head>
<body>
	
	<input type="button" id="btn1" value="width()">
	<input type="button" id="btn2" value="innerWidth()">
	<input type="button" id="btn3" value="outerWidth()">
	<hr>
	<div id="aa">Lorem ipsum</div>
	
</body>
</html>