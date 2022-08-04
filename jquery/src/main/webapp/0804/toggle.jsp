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
				$('#aa').toggle("slow");
			});
			$('#view2').click(function(){
				$('img').toggle("fast");
			});
		});
	</script>
</head>
<body>	<!-- toggle.jsp => toggle() -->
	
	<input type="button" id="view1" value="글자 toggle">
	<div id="aa"><h1>Lorem Ipsum</h1></div>
	<hr>
	<input type="button" id="view2" value="img toggle"><p>
	<img src="Penguins.jpg" width="200">
	
</body>
</html>