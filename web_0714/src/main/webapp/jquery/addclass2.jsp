<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jQuery/addClass2</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script>
	$(function(){
		$('#aa').click(function(){
			$('#aa').addClass('aa');
		});
		$('#btn1').click(function(){
			$('#aa').removeClass('aa');
		});
	});
</script>
<style>
	.aa {
		color:deeppink;
		font-size:24px;
		border:1px solid green;
		width:160px;
		height:34px;
	}
</style>
</head>
<body>
	<!-- id="aa"인 요소의 글자색,크기,외곽선,가로,세로를 적용 -->
	<!-- 안녕하세요 클릭되면 스타일 변경 -->
	
	<input type="button" id="btn1" value="removeClass">
	<div id="aa"> 안녕하세요 </div>
	
</body>
</html>