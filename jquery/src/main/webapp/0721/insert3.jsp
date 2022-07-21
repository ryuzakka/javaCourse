<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jQuery : Insert3</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script>
	$(function(){
		$('.aa').click(function(){
			$(this).insertBefore($('.aa').eq($(this).index()-1));
		});
	});
</script>
</head>
<body>
	
	<div class="aa"> 짜장면 </div>
	<div class="aa"> 탕수육 </div>
	<div class="aa"> 짬뽕 </div>
	<div class="aa"> 볶음밥 </div>
	<div class="aa"> 라조기 </div>
	<div class="aa"> 햄버거 </div>
	<div class="aa"> 치킨 </div>
	<div class="aa"> 피자 </div>
	
</body>
</html>