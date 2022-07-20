<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jQuery - append prepend</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script>
	$(function(){
		$('#btn1').click(function(){
			$('.my').append('이 끝나가네요.');
			$('.my').prepend('힘들었던 ');
		});
		$('#btn2').click(function(){
			$('.my').append($('#bb'));
			$('.my').prepend($('#aa'));
		});
		
		$('#source').click(function(){
			alert($('body').html().trim());
		});
	});
</script>
</head>
<body>
	
	<span class="my"> 수요일 </span>
	<hr>
	<input type="button" id="btn1" value="click to Text append">
	<input type="button" id="btn2" value="click to Element append">
	<span id="aa"> 오늘은 </span>
	<span id="bb"> 입니다. </span>
	
	<p>
	<input type="button" id="source" value="view source">
	
</body>
</html>