<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jQuery/remove attr</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script>
	$(function(){
		$('#btn1').click(function(){
			$('#aa').attr('align', 'right');
		});
		$('#btn2').click(function(){
			$('#aa').removeAttr('align');
		});
		$('#btn3').click(function(){
			$('#aa').attr('align', 'center');
		});
	});
</script>
</head>
<body>
	<!-- removeAttr() -->
	
	<input type="button" id="btn2" value="remove">
	<input type="button" id="btn3" value="center">
	<input type="button" id="btn1" value="right">
	<hr>
	<div id="aa" align="center">Lorem ipsum</div>
	
</body>
</html>