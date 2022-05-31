<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Kurly</title>
	<style>
		body {
			margin:0px;
		}
		div {
			
		}
		#first { /* 가로, 세로 중앙정렬 */
			width:100%;
			height:42px;
			background:#5F0080;
			margin:auto;
			text-align:center;
		}
		#first #left, #first #right {
			display:inline-block;
			color:white;
			padding-top:10px;
		}
		#first #left {
			width:1000px;
		}
		#first #right {
			width:50px;
		}
		#second {
			width:1050px;
			height:37px;
			margin:auto;
			border:solid 1px lightgray;
			font-size:12px;
		}
		#second #left, #second #right {
			display:inline-block;
			width:500px;
			padding-top:10px;
		}
		#second #left span {
			border:1px solid lightgrey;
			border-radius:10px;
			margin:10px;
			padding:2px 9px;
			text-align:center;
		}
		#second #left {
			padding-left:10px;
		}
		#second #left strong {
			color:#5F0080;
		}
		#second #right {
			/* padding-right:10px; */
			text-align:right;
		}
		#second #right span {
		}
		#third {
			width:1050px;
			height:79px;
			margin:auto;
			border:solid 1px lightgray;
			text-align:center;
		}
		#third img {
			height:79px;
		}
		#fourth {
 			width:1050px;
 			height:56px;
 			margin:auto;
 			border:solid 1px lightgray;
		}
		#fourth #menu li {
			list-style-type:none;
			display:inline-block;
			text-align:center;
			vertical-align:middle;
			width:100px;
			height:35px;
			font-size:12px;
		}
		#fourth #menu input {
			/* width:240px; */
			height:24px;
			background-color:#F7F7F7;
			border:1px solid #f7f7f6;
			border-radius:20px;
			padding:5px;
		}
		#fourth #menu li img {
			width:30px;
			height:30px;
		}
		#fifth {
			width:1900px;
			height:370px;
			margin:auto;
			border:solid 1px lightgray;
		}
		#sixth {
			width:1050px;
			height:512px;
			margin:auto;
			border:solid 1px lightgray;
		}
		#sixth .caption {
			font-size:30px;
			font-style:bold;
			text-align:center;
		}
		#sixth .item {
			width:1050px;
			height:300px;
		}
		#sixth .item .itemlist {
			list-style-type:none;
			display: flexbox;
			/* position: relative; */
		}
		#sixth .item .itemlist .img {
			display: inline-block;
		}
		#sixth .item .itemlist img .product {
			position: absolute;
			/* display: flexbox; */
			width: 40%;
			height: auto;
		}
		#sixth .item .itemlist img .cart {
			border-radius: 100%;
			width: 80px;
			height: 80px;
			background-color: lightgray;
			display: inline-block;
		}
	</style>
</head>
<body>
	<!-- https://www.kurly.com/shop/main/index.php -->
	<div id="first">
		<div id="left">지금 가입하고 인기상품 100원에 받아가세요! &gt;</div>
		<div id="right">X</div>
	</div>
	<div id="second">
		<div id="left">
			<span><strong>샛별·택배</strong> 배송안내 ></span>
		</div>
		<div id="right">
			<span>회원가입 | 로그인 | 고객센터 ▼</span>
		</div>
	</div>
	<div id="third"><img src="img/logo.jpg"></div>
	<div id="fourth">
		<ul id="menu">
			<li><img src="img/Hamburger_icon.svg.png" style="width:18px;height:18px;">전체 카테고리</li>
			<li>신상품</li>
			<li>베스트</li>
			<li>알뜰쇼핑</li>
			<li>특가/혜택</li>
			<li id="search" style="width:280px;">
				<input type="text" placeholder="검색어를 입력해주세요.">
				<img src="img/ico_search_x2.webp">
			</li>
			<li style="width:50px;"><img src="img/ico_delivery_setting.svg"></li>
			<li style="width:50px;"><img src="img/btn-heart-off.svg"></li>
			<li style="width:50px;"><img src="img/ico_cart.svg"></li>
		</ul>
	</div>
	<div id="fifth"><img src="img/32f45f26-8f33-4b1d-ae91-3b4f6483a4a0.webp"></div>
	<div id="sixth">
		<p class="caption">이 상품 어때요?</p>
		<div class="item">
			<ul >
				<li class="itemlist">
					<div class="img">
						<img class="product" src="img/1653040503160l0.jpeg">
						<img class="cart" src="img/ico_cart.svg">
					</div>
					<div>
						<div>상품명</div>
						<div>
							<span>할인율</span>
							<span>최종금액</span>
						</div>
						<div>정가</div>
					</div>
				</li>
				<li class="itemlist">
					<div class="img">
						<img class="product" src="img/1646967960824l0.webp">
						<img class="cart" src="img/ico_cart.svg">
					</div>
					<div>
						<div>상품명</div>
						<div>
							<span>할인율</span>
							<span>최종금액</span>
						</div>
						<div>정가</div>
					</div>
				</li>
				<li class="itemlist">
					<div class="img">
						<img class="product" src="img/149507097276l0.jpg">
						<img class="cart" src="img/ico_cart.svg">
					</div>
					<div>
						<div>상품명</div>
						<div>
							<span>할인율</span>
							<span>최종금액</span>
						</div>
						<div>정가</div>
					</div>
				</li>
				<li class="itemlist">
					<div class="img">
						<img class="product" src="img/1510025376326l0.jpg">
						<img class="cart" src="img/ico_cart.svg">
					</div>
					<div>
						<div>상품명</div>
						<div>
							<span>할인율</span>
							<span>최종금액</span>
						</div>
						<div>정가</div>
					</div>
				</li>
			</ul>
		</div>
	</div>
</body>
</html>