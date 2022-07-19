<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<meta charset="UTF-8">
<title>Change Width</title>
<style>
	#aa {
		width:50px;
		height:50px;
		background:lightsalmon;
	}
</style>
<script>
	$(function(){
		var w = 50;
		$('#btn').click(function(){
			var ss = setInterval(function(){
				w++;
				$('#aa').width(w);
				$('#aa').height(w);
				
				if(w > 400)
					clearInterval(ss);
			},1);
		});
	});
</script>
</head>
<body>
	
	<input type="button" id="btn" value="Click">
	<hr>
	<div id="aa">Lorem ipsum</div>
	
</body>
</html>