<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>queue</title>
<style>
	#aa {
		width:40px;
		height:40px;
		background:tomato;
	}
</style>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script>
	$(function(){
		$("#btn1").click(function(){
			$("#aa").queue(function(){
				$("#aa").animate({marginLeft:"400px"},2000);
				$("#aa").animate({marginTop:"400px"},2000);
				$("#aa").animate({width:"200px",height:"200px"},2000);
				$("#aa").animate({marginLeft:"0px",marginTop:"0px"},2000);
			});
		});
		
		$("#btn2").click(function(){
			$("#aa").dequeue();
		});
		
		$("#btn3").click(function(){
			$("#aa").clearQueue();
		});
		
		$("#btn4").click(function(){
			$("#aa").finish();
		});
		
		$("#btn5").click(function(){
			$("#aa").stop();
		});
	});
</script>
</head>
<body>
	
	<input type="button" id="btn1" value="queue">
	<input type="button" id="btn2" value="dequeue">
	<input type="button" id="btn3" value="clear Queue">
	<input type="button" id="btn4" value="finish">
	<input type="button" id="btn5" value="stop">
	<hr>
	<div id="aa"></div>
	
</body>
</html>