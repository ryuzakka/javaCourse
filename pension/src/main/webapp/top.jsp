<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>pension</title>
<style>
	body {
		margin:0px;
	}
	#first {
		width:1100px;
		height:33px;
		margin:auto;
		text-align:center;
		padding-top:7px;
		background:#F5F5DC;
	}
	#second {
		width:1100px;
		height:60px;
		margin:auto;
		background:#FDF5E6;
	}
	#second > #left {
		width:170px;
		height:60px;
		padding-left:30px;
	}
	#second > #right {
		width:890px;
		height:60px;
	}
	#second>#left , #second>#right {
		/* 로고와 메뉴 영역 */
		display:inline-block;
	}
	#second > #right > .menu > li {
		/* 메뉴 리스트 */
		list-style-type:none;
		display:inline-block;
		width:160px;
	}
	#second #right > .menu #menu {
		position:relative;
	}
	#second #right > .menu #menu div {
		padding:8px 18px;
	}
	#second #right > .menu #menu .sub {
		position:absolute;
		padding:8px 18px;
		/* padding-left:18px;
		padding-right:18px; */
		visibility:hidden;
		background:#FDF5E6;
		border:3px solid #F0F8FF;
	}
	#second #right > .menu #menu .sub li {
		list-style-type:none;
	}
	#third {
		width:1100px;
		height:731px;
		margin:auto;
		background:#E0FFFF;
	}
	/* #third > #box { 
		background-image: url('../img/main.jpg');
		background-repeat: no-repeat;
		background-attachment: fixed;
		background-position: center;
		background-size: cover;
	} */
	#fourth {
		width:1100px;
		height:130px;
		margin:auto;
		margin-top:50px;
		background:#F0F8FF;
	}
	#fourth > div {
		width:360px;
		height:130px;
		border:1px solid pink;
		display:inline-block;
	}
	#fifth {
		width:1100px;
		height:150px;
		margin:auto;
		margin-top:50px;
		background:#F5F5F5;
	}
	#fifth > div {
		width:213px;
		height:150px;
		border:1px solid pink;
		display:inline-block;
	}
	#sixth {
		width:1100px;
		height:100px;
		margin:auto;
		margin-top:40px;
		background:#F5FFFA;
	}
</style>
<script src="../etc/pension.js"></script>
<script>
	function view(n) {
		document.getElementsByClassName('sub')[n].style.visibility = "visible";
	}
	function hide(n) {
		document.getElementsByClassName('sub')[n].style.visibility = "hidden";
	}
</script>
</head>
<body>

	<div id="first"> 펜션 오픈 기념 1박에 10,000원 !! <span id="closeBtn"> [ X ] </span></div>
	<div id="second">
		<div id="left">
			<a href="../main/index.jsp"><img src="../img/logo.png" width="35px"></a>
			FUNNY펜션
		</div>
		<div id="right">
			<ul class="menu">
				<li id="menu" onmouseover="view(0)" onmouseout="hide(0)">
					<div>펜션소개</div>
					<ul class="sub">
						<li><a href="../sogae/intro.jsp">인사말</a></li>
						<li> 객실소개 </li>
						<li> 오시는길 </li>
					</ul>
				</li>
				<li id="menu" onmouseover="view(1)" onmouseout="hide(1)">
					<div>여행정보</div>
					<ul class="sub">
						<li> 주문진 항 </li>
						<li> 장사해수욕장 </li>
						<li> 설악산 </li>
						<li> 정동진 </li>
					</ul>
				</li>
				<li id="menu" onmouseover="view(2)" onmouseout="hide(2)">
					<div>예약관련</div>
					<ul class="sub">
						<li> 예약안내 </li>
						<li> 예약하기 </li>
					</ul>
				</li>
				<li id="menu" onmouseover="view(3)" onmouseout="hide(3)">
					<div>커뮤니티</div>
					<ul class="sub">
						<li> 공지사항 </li>
						<li> 여행후기 </li>
						<li> 자유게시판 </li>
					</ul>
				</li>
				
				<li id="menu" onmouseover="view(4)" onmouseout="hide(4)">
					<c:if test="${userid == null}">
						<div>회원서비스</div>
						<ul class="sub">
							<li><a href="../member/login.jsp">로그인</a></li>
							<li><a href="../member/member_input.jsp">회원가입</a></li>
						</ul>
					</c:if>
					<c:if test="${userid != null}">
						<div>${username}님</div>
						<ul class="sub">
							<li><a href="../member/member_info.jsp">회원정보</a></li>
							<li><a href="../member/logout.jsp">로그아웃</a></li>
						</ul>
					</c:if>
				</li>
			</ul>
		</div>
	</div>