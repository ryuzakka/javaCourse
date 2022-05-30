<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Layer</title>
	<style>
		#pkc {
			/* 레이어의 크기와 배경색 */
			width:120px;
			height:200px;
			border:1px solid red;
			background:pink;
			visibility:visible;
			
			/* 레이어를 만들기 */
			position:absolute;
			left:200px;
			top:80px;
			/* 
			relative : 
			absolute : 문서의 좌측상단을 기준으로 고정
			fixed : 브라우저의 좌측상단을 기준으로 고정
			*/
		}
		#chan {
			width:200px;
			height:200px;
			border:1px solid red;
			background:lightgrey;
			/* 레이어 만들기 */
			position:fixed;
			/* 레이어의 위치 */
			left:400px;
			top:80px;
			visibility:visible;
		}
	</style>
	<script>
		function hide_chan() {
			document.getElementById("chan").style.visibility="hidden";
		}
		function hide_pkc() {
			document.getElementById("pkc").style.visibility="hidden";
		}
	</script>
</head>
<body>
	<!-- 웹문서에 존재하는 계층 => 포스트잇  -->
	Lorem ipsum dolor sit amet <p>
	<div id="chan"> 헤헤 오늘은 월요일 <span onclick="hide_chan()">X</span> </div>
	Lorem ipsum dolor sit amet <p>
	<div id="pkc"> 여기는 포스트잇(레이어) <span onclick="hide_pkc()">X</span> </div>
	Lorem ipsum dolor sit amet <p>
	Lorem ipsum dolor sit amet <p>
	Lorem ipsum dolor sit amet <p>
	Lorem ipsum dolor sit amet <p>
	Lorem ipsum dolor sit amet <p>
	Lorem ipsum dolor sit amet <p>
	Lorem ipsum dolor sit amet <p>
	Lorem ipsum dolor sit amet <p>
	Lorem ipsum dolor sit amet <p>
	Lorem ipsum dolor sit amet <p>
	Lorem ipsum dolor sit amet <p>
	Lorem ipsum dolor sit amet <p>
	Lorem ipsum dolor sit amet <p>
	Lorem ipsum dolor sit amet <p>
	Lorem ipsum dolor sit amet <p>
	Lorem ipsum dolor sit amet <p>
	Lorem ipsum dolor sit amet <p>
	Lorem ipsum dolor sit amet <p>
	Lorem ipsum dolor sit amet <p>
	Lorem ipsum dolor sit amet <p>
	Lorem ipsum dolor sit amet <p>
	Lorem ipsum dolor sit amet <p>
	Lorem ipsum dolor sit amet <p>
	Lorem ipsum dolor sit amet <p>
	Lorem ipsum dolor sit amet <p>
	Lorem ipsum dolor sit amet <p>
	Lorem ipsum dolor sit amet <p>
	Lorem ipsum dolor sit amet <p>
	
</body>
</html>