<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>accordion</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="http://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script>
	$(function(){
		$("#main").accordion();
	});
</script>
</head>
<body>
	
	<div id="main">
		<h2>짜장면</h2>
		<div>중국요리의 하나. 고기와 채소를 넣어 볶은 중국 된장에 국수를 비벼 먹는다.</div>
		<h2>짬뽕</h2>
		<div>중국요리의 하나. 국수에 각종 해물이나 야채를 섞어서 볶은 것에 돼지 뼈나 소뼈, 닭 뼈를 우린 국물을 부어 만든다.</div>
		<h2>탕수육</h2>
		<div>중국요리의 하나. 쇠고기나 돼지고기에 녹말을 묻혀 튀긴 것에 초, 간장, 설탕, 야채 따위를 넣고 끓인 녹말 물을 부어 만든다.</div>
		<h2>비빔밥</h2>
		<div>고기나 나물 따위와 여러 가지 양념을 넣어 비벼 먹는 밥.</div>
	</div>
	
</body>
</html>