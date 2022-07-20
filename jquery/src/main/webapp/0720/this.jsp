<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jQuery - this</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script>
	$(function(){
		// 글자를 클릭하면 빨간색으로 변경
		$('.aa').click(function(){
			$(this).css('color','tomato');	// $(this) = 자기 자신의 객체
			console.log($(this).index());	// index값을 알기 위해
		});
	});
</script>
</head>
<body>
	
	
	<div class="aa"> 짜장면 </div>
	<div class="aa"> 탕수육 </div>
	<hr>
	<div class="aa"> 짬뽕 </div>
	<div class="aa"> 볶음밥 </div>
	<div class="aa"> 라조기 </div>
	<div class="aa"> 햄버거 </div>
	<div class="aa"> 치킨 </div>
	<div class="aa"> 피자 </div>
	<hr>
	
</body>
</html>