<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>menu1</title>
<style>
	/* 
		1. 주메뉴 태그내에 부메뉴 태그가 포함되어야 한다.
		2. 주메뉴의 position = relative
		3. 부메뉴의 position = absolute
		4. 부메뉴의 설정
			- 처음에는 숨겨져있음
			- 이벤트를 통해 부메뉴를 보이게 한다. (ex. mouseover, click)
	 */
	#main {
		width:60px;
		height:45px;
		margin:auto;
		padding-left:10px;
		position:relative;
		background:yellow;
	}
	#sub {
		position:absolute;
		padding:5px 10px;
		left:0px;
		top:25px;
		background:pink;
		visibility:hidden;
	}
</style>
<script>
	function view() {
		document.getElementById('sub').style.visibility = "visible";
	}
	function hide() {
		document.getElementById('sub').style.visibility = "hidden";
	}
</script>
</head>
<body>	<!-- menu1.jsp -->
	
	<div id="main" onmouseover="view()" onmouseout="hide()">
		주메뉴
		<div id="sub" onmouseover="view()" onmouseout="hide()">
			부메뉴 <br>
			부메뉴 <br>
			부메뉴 <br>
		</div>
	</div>
	
	
</body>
</html>