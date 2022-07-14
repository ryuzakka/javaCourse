<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jQuery html</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script>
	$(function(){
		// 특정요소(태그)내에 텍스트, html이 포함된 내용을 넣는 방법
		$("#btn1").click(function(){
			//document.getElementById("aa").innerText = "Hi?";
			$('#aa').text('Lorem ipsum');
		});
		$('#btn2').click(function(){
			//document.getElementById('aa').innerHTML = "<u>Merci</u>";
			$('#bb').html('<strong>Hi?</strong><p>');
		});
		
		$('#btn3').click(function(){
			//console.log(document.getElementById('cc').innerText);
			console.log($('#bb').text());
		});
		$('#btn4').click(function(){
			//console.log(document.getElementById('cc').innerHTML);
			console.log($('#bb').html());
		});
	});
</script>
</head>
<body>
	
	<!-- innerText, innerHTML : text(), html() -->
	<b id="btn1"> id="aa"에 값 넣기 </b> <p>
	<b id="btn2"> id="aa"에 태그를 포함한 값 넣기 </b> <p>
	
	<input type="button" id="btn3" value="text읽기">
	<input type="button" id="btn4" value="html읽기">	
	<hr>
	
	<div id="aa"></div>
	<div id="bb"></div>
	<div id="cc"><b>Today is Thurs</b></div>
	
</body>
</html>