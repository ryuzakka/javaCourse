<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>text-decoration</title>
	<style>
		a {
			text-decoration:none;
			color:black;
		}
		a:hover {
			text-decoration:underline;
		}
		#naver:hover {
			color:#19ce60;
		}
		#coupang:hover {
			color:#4285f4;
		}
		#kurly:hover {
			color:#5f0080;
		}
		#aa:hover {
			color:#1967d2;
			text-decoration:line-through;
		}
		.bb:hover {
			color:#DE3A14;
			text-decoration:line-through;
		}
	</style>
</head>
<body>
	<!-- text-decoration -->
	<!-- a태그는 기본적으로 가지는데, 여기에 자주 사용하는 속성 -->
	
	<a href="https://naver.com/" target="_blank" id="naver"> Naver </a> <p>
	<a href="https://coupang.com" target="_blank" id="coupang"> Coupang </a> <p>
	<a href="https://kurly.com" target="_blank" id="kurly"> Kurly </a> <p>
	<hr>
	<div id="aa">Today is WednesDay</div>
	<span class="bb">Lorem ipsum dolor sit amet</span>
	
</body>
</html>