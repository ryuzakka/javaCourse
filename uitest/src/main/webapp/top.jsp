<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>UI Test</title>
	<style>
		body {
			margin:0px;
		}
		#first {
			width:1000px;
			height:40px;
			margin:auto;
			text-align:center;
			padding-top:7px;
			background:#F5F5DC;
		}
		#second {
			width:1000px;
			height:60px;
			margin:auto;
			background:#FDF5E6;
		}
		#second > #left {
			width:170px;
			height:60px;
			padding-left:60px;
		}
		#second > #right {
			width:700px;
			height:60px;
			text-align:right;
		}
		#second>#left , #second>#right {
			/* 로고와 메뉴 영역 */
			display:inline-block;
		}
		#second > #right > .menu > li {
			/* 메뉴 리스트 */
			list-style-type:none;
			display:inline-block;
			width:100px;
		}
		#second #right > .menu #menu {
			position:relative;
		}
		#second #right > .menu #menu div {
			padding:8px 18px;
		}
		#second #right > .menu #menu .sub {
			position:absolute;
			padding:8px 8px;
			font-size:13px;
			/* padding-left:18px;
			padding-right:18px; */
			visibility:hidden;
			background:#F5F5F5;
			border:3px solid #F0F8FF;
		}
		#second #right > .menu #menu .sub li {
			list-style-type:none;
		}
		#fifth {
			width:1000px;
			height:100px;
			margin:auto;
			/* margin-top:40px; */
			background:#F5FFFA;
		}
		#fifth table {
			padding:8px 70px;
		}
	</style>
	<script>
		function view() {
			document.getElementsByClassName('sub')[0].style.visibility = "visible";
		}
		function hide() {
			document.getElementsByClassName('sub')[0].style.visibility = "hidden";
		}
	</script>
	
</head>
<body>

	<div id="first"> 오픈 기념 무조건 100,000원 !! <span id="closeBtn"> [ X ] </span></div>
	<div id="second">
		<div id="left">
			<img src="./img/logo.png" width="35px" onclick="javascript:location='index.jsp'" style="cursor:pointer;">
		</div>
		<div id="right">
			<ul class="menu">
				<li>
					<div>로그인</div>
				</li>
				<li>
					<div onclick="javascript:location='signup.jsp'" style="cursor:pointer;">회원가입</div>
				</li>
				<li id="menu" onmouseover="view()" onmouseout="hide()">
					<div>고객센터</div>
					<ul class="sub">
						<li>자주묻는질문</li>
						<li>1:1질문</li>
						<li>고객의 소리</li>
					</ul>
				</li>
				
			</ul>
		</div>
	</div>