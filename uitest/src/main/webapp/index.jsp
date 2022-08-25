<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
	#third {
		width:1400px;
		height:400px;
		margin:auto;
		background:#E0FFFF;
	}
	#third #box {
		width:1400px;
		height:400px;
		overflow:hidden;
	}
	#third #inner {
		width:5600px;
		height:400px;
	}
	#third #inner img {
		width:1400px;
		height:400px;
	}
	#fourth {
		width:1000px;
		height:150px;
		margin:auto;
		/* display:flex; */
		border-spacing:0px;
		/* margin-top:50px; */
		background:#F0F8FF;
	}
	#fourth article {
		width:329px;
		height:150px;
		margin:0;
		padding:0;
		/* border:1px solid pink; */
		display:inline-block;
	}
	#fourth #gongji {
		background:olive;
	}
	#fourth #board {
		background:bluesky;
	}
	#fourth #qna {
		background:pink;
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
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
	function view() {
		document.getElementsByClassName('sub')[0].style.visibility = "visible";
	}
	function hide() {
		document.getElementsByClassName('sub')[0].style.visibility = "hidden";
	}
	$(function(){
		// 슬라이드 그림 움직이기
		setInterval(function(){
			$("#box #inner").animate({
				marginLeft:"-1400px"
			},1000,function(){
				$("#box #inner").css("margin-left","0px");
				$("#box #inner img").eq(0).insertAfter($("#box #inner img").eq(4));
			});
		},3000);
	});
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

	<div id="third">
		<div id="box">
			<div id="inner">
				<img src="img/1.png"><img src="img/2.png"><img src="img/3.png"><img src="img/4.png"><img src="img/5.png">
			</div>
		</div>
	</div>

	<div id="fourth">
		<article id="gongji">
			<div>공지사항</div>
			<ul class="list">
				<li><a href="#">[일반] 공지사항2</a></li>
				<li><a href="#">[긴급] 공지사항1</a></li>
			</ul>
		</article>
		<article id="board">
			<div>자유게시판</div>
			<ul class="list">
				<li><a href="#">자유2</a></li>
				<li><a href="#">자유1</a></li>
			</ul>
		</article>
		<article id="qna">
			<div>Q&A</div>
			<ul class="list">
				<li><a href="#">Q&A 2</a></li>
				<li><a href="#">Q&A 1</a></li>
			</ul>
		</article>
	</div>

	<div id="fifth">
		<table>
			<tr>
				<td width="100"> </td>
				<td width="350"> </td>
				<td width="150"> </td>
				<td width="400"> </td>
			</tr>
			<tr>
				<td> 사업주 </td>
				<td> 류달 </td>
				<td> 이메일 </td>
				<td> ryuzakkaya@gmail.com </td>
			</tr>
			<tr>
				<td> 전화번호 </td>
				<td> 000-0000-0000 </td>
				<td> 사업자등록번호 </td>
				<td> 123-12-12345 </td>
			</tr>
			<tr>
				<td> 주 소 </td>
				<td> 경기 고양시 일산서구 킨텍스로 </td>
				<td> </td>
				<td> </td>
			</tr>
		</table>
	</div>

</body>
</html>