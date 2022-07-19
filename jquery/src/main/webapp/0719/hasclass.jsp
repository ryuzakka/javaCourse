<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<title>hasClass 1</title>
<style>
	.s1 {
		color:red;
	}
</style>
<script>
	$(function(){
		// hasClass() => 클래스의 속성을 가지고 있느냐
		
		// id='aa'인 요소를 클릭하면 s1 클래스를 추가
		$('#aa').click(function(){
			$('#aa').addClass("s1");
		});
		
		// id='btn'인 요소를 클릭하면 id='aa'인 요소의 클래스 적용여부를 hasClass()를 통해 확인
		$('#btn').click(function(){
			console.log($('#aa').hasClass('s1'));
		});
	});
</script>
</head>
<body>
	
	<input type="button" id="btn" value="확인">
	<hr>
	<div id="aa">Lorem ipsum</div>
	
</body>
</html>