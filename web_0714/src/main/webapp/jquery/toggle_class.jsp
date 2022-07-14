<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jQuery/toggle Class</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<style>
	#aa {
		width:100px;
		height:30px;
		text-align:center;
		padding-top:5px;
		border:1px solid red;
	}
	.ss {
		background:red;
		color:white;
	}
</style>
<script>
	$(function(){
		$('#aa').mouseover(function(){
			$('#aa').addClass('ss');
		});
		$('#aa').mouseout(function(){
			$('#aa').removeClass('ss');
		});
		
		$('#bb').click(function(){
			$('#bb').toggleClass('ss');
		});
	});
</script>
</head>
<body>
	
	<div id="aa"> 건강 식품 </div>
	<hr>
	<div id="bb"> <input type="button" value="신선 식품"> </div>
	
</body>
</html>