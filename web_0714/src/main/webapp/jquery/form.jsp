<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jQuery/form</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script>
	$(function(){
		$('#btn1').click(function(){
			console.log($('#name').val());	// document.dhr.name.value
			console.log($('#age').val());	// documnet.dhr.age.value
		});
		$('#btn2').click(function(){
			$('#name').val("SpiderMan");
			$('#age').val(24);
		});
	});
</script>
</head>
<body>
	
	<form name="dhr">
		이름 <input type="text" id="name" name="name"> <p>
		나이 <input type="text" id="age" name="age"> <p>
		<input type="button" id="btn1" value="console-log">
		<input type="button" id="btn2" value="value input">
	</form>
	
</body>
</html>