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
	
	#section {
		width:960px;
		height:auto;
		margin:120px auto;
	}
	#section h1 {
		font-size:50px;
	}
	#section img {
		width:100%;
	}
	#section table span {
		margin-bottom:4px;
		font-size:12px;
		color:rgba(55, 53, 47, 0.65)
	}
	#section table input[type='text'] {
		width:320px;
		font-size:15px;
		line-height:26px;
		padding:4px 10px;
		border-radius:3px;
		border:1px solid lightgrey;
		color:rgba(55, 53, 47, 0.65);
		background:rgba(242, 241, 238, 0.6);
		cursor:text;
		margin-top:4px;
		margin-bottom:8px;
	}
	#section table input[type='submit'] {
		width:100%;
		height:36px;
		color:rgb(235, 87, 87);
		font-size:14px;
		line-height:26px;
		padding-left:12px;
		padding-right:12px;
		font-weight:500;
		background:rgb(253, 245, 242);
		margin-top:6px;
		margin-bottom:12px;
		border:1px solid rgb(235 87 87 / 30%);
	}
	#section table tr:last-child td:last-child , a {
		color:rgba(55, 53, 47, 0.65);
		font-size:14px;
		margin:8px 0px;
		text-align:center;
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

	<div id="section">
	
		<form method="post" action="signup_ok.jsp">
			<table width="320" align="center">
				<caption><h1> 회원 가입 </h1></caption>
				
				<tr><td><img src="./img/google.JPG"></td></tr>
				<tr><td><img src="./img/apple.JPG"><p></td></tr>
				
				<tr><td>
					<span>이메일</span><br>
					<input type="text" name="email" placeholder="이메일 주소를 입력하세요." required>
				</td></tr>
				<tr><td><input type="submit" value="이메일로 계속하기"></td></tr>
		
				<tr><td><a href="#">SAML SSO</a>를 사용하여 계속할 수도 있습니다.</td></tr>
		
			</table>
		</form>
		
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