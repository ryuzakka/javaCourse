<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jquery attr</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script>
	$(function(){
		// 태그의 속성을 읽어오기
		var s1 = $("input[type=text]").attr('value');
		console.log(s1);
		
		// 태그의 속성을 바꾸기
		$('#aa').attr("type","radio");
		
		$('a').attr("href","http://coupang.com/");
	});
</script>
</head>
<body>
	
	<input type="text" value="name"> <p>
	<input type="checkbox" id="aa">
	<a href=""> Click Me! </a>
	
</body>
</html>