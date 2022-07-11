<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#menu {
		width:500px;
		margin:auto;
		text-align:center;
	}
	#main {
		width:140px;
		height:40px;
		margin:auto;
		position:relative;
		display:inline-block;
		border:1px solid red;
		padding-top:17px;
	}
	.sub {
		border:1px solid blue;
		position:absolute;
		left:-1px;
		width:140px;
		top:57px;
		visibility:hidden;
	}
</style>
<script>
	function view(i) {
		document.getElementsByClassName('sub')[i].style.visibility = "visible";
	}
	function hide(i) {
		document.getElementsByClassName('sub')[i].style.visibility = "hidden";
	}
</script>
</head>
<body>
	
	<div id="menu">
		<div id="main" onmouseover="view(0)" onmouseout="hide(0)">
			주메뉴
			<div class="sub" onmouseover="view(0)" onmouseout="hide(0)">
				부메뉴 <br>
				부메뉴 <br>
				부메뉴 <br>
			</div>
		</div>
		<div id="main" onmouseover="view(1)" onmouseout="hide(1)">
			주메뉴
			<div class="sub" onmouseover="view(1)" onmouseout="hide(1)">
				부메뉴 <br>
				부메뉴 <br>
				부메뉴 <br>
			</div>
		</div>
		<div id="main" onmouseover="view(2)" onmouseout="hide(2)">
			주메뉴
			<div class="sub" onmouseover="view(2)" onmouseout="hide(2)">
				부메뉴 <br>
				부메뉴 <br>
				부메뉴 <br>
			</div>
		</div>
	</div>
	
</body>
</html>