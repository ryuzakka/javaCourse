<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<title>Insert title here</title>
	<script>
		$(function(){
			$('#view1').click(function(){
				$('#aa').show("slow");	// "slow", "fast", 시간(1/1000초)
			});
			$('#hide1').click(function(){
				$('#aa').hide("slow");
			});
			$('#view2').click(function(){
				$('img').show("fast");
			});
			$('#hide2').click(function(){
				$('img').hide("fast");
			});
		});
	</script>
</head>
<body>	<!-- show() hide() -->
	
	<input type="button" id="view1" value="글자보이기"><input type="button" id="hide1" value="글자숨기기">
	<div id="aa"><h1>Lorem Ipsum</h1></div>
	<hr>
	<input type="button" id="view2" value="img보이기"><input type="button" id="hide2" value="img숨기기"><p>
	<img src="Penguins.jpg" width="200">
	
</body>
</html>