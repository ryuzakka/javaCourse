<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jquery css2</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script>
	// jquery의 메소드를 여러개 사용할 경우
	// $(요소).메소드명();
	$(function(){
		// 요소의 색, 크기, 배경색
		$("#aa").css("color", "red");
		$("#aa").css("font-size", "30px");
		$("#aa").css("background","yellow");
		
		// 연속으로 처리
		$('.aa').css("color","blue").css("font-size","20px").css("background","pink");
		
		// 이렇게는 실행 안됨
		document.getElementById("aa").css("text-decoration","underline");
	});
</script>
</head>
<body>
	
	<div id="aa">Lorem ipsum1</div> <p>
	<div class="aa">Lorem ipsum2</div> <p>
	
</body>
</html>