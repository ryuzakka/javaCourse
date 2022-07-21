<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jQuery : insert4</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script>
	$(function(){
		$('.aa').click(function(){
			var n = $(this).index();
			if(n != 0) {
				$('.aa').eq(n-1).insertAfter($(this));
				
				var len = $('.in').length;
				
				for(i=0; i<len; i++) {
					$('.in').eq(i).text(i+1);
				}
			}
		});
	});
</script>
</head>
<body>
	
	<div class="aa"> <span class="in">1 </span> 짜장면 </div>
	<div class="aa"> <span class="in">2 </span> 탕수육 </div>
	<div class="aa"> <span class="in">3 </span> 짬뽕 </div>
	<div class="aa"> <span class="in">4 </span> 볶음밥 </div>
	<div class="aa"> <span class="in">5 </span> 라조기 </div>
	<div class="aa"> <span class="in">6 </span> 햄버거 </div>
	<div class="aa"> <span class="in">7 </span> 치킨 </div>
	<div class="aa"> <span class="in">8 </span> 피자 </div>
	
</body>
</html>