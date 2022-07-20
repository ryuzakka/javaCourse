<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jQuery - Insert</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script>
	$(function(){
		// 동일한 이름을 가진 요소들 중에서 특정 요소로 접근하기 => eq(인덱스)
		$('.aa').css('color','hotpink');
		$('#btn1').click(function(){
			$('.aa').eq(3).css('color','red');
		});
		
		$('#btn2').click(function(){
			// index 3번을 0번 앞으로 이동
			$('.aa').eq(7).insertBefore($('.aa').eq(0));
		});
		$('#btn3').click(function(){
			// index 3번을 0번 앞으로 이동
			$('.aa').eq(0).insertAfter($('.aa').eq(7));
		});
	});
</script>
</head>
<body>
	
	<input type="button" id="btn1" value="btn1">
	<input type="button" id="btn2" value="btn2">
	<input type="button" id="btn3" value="btn3">
	<hr>
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