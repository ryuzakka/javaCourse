<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>text-decoration</title>
	<style>
		body { font-size:20px;}
		div { text-decoration:overline; }	/* 윗줄 */
		a { text-decoration:none; }			/* 줄없음 */
		#aa { text-decoration:underline; }	/* 밑줄 */
		#bb { text-decoration:line-through; }	/* 가운데줄 */
	</style>
</head>
<body>
	<!-- text-decoration: 밑줄, 윗줄, 가운데줄, 줄없음 -->
	<div>안녕하세요</div> <p>
	<span id="aa">감사합니다</span> <p>
	<span id="bb">Thank you</span> <p>
	<span id="cc">Lorem ipsum dolor sit amet</span> <p>
	<a href="https://kurly.com/" target="_blank">컬리</a> <p>
	<u>Wednesday</u> <p>
	<s>On Sale</s> <p>
	
</body>
</html>