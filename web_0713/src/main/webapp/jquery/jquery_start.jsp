<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jquery start</title>
<script src="test.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script>
	// $(document).ready(function() {
	$(function() {
		$('#aa').click(function() {
			console.log('aa clicked!');
		});
	});
</script>
</head>
<body>

	<div id="aa">Click Me</div>
	
</body>
</html>