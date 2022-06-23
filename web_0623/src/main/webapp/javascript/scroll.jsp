<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>0623js/scroll</title>
<style>
	#aa {
		position:fixed;
		left:300px;
		width:30px;
		height:30px;
	}
	#bb {
		position:absolute;
		width:40px;
		height:40px;
		left:100px;
	}
	#cc {
		position:fixed;
		left:800px;
		width:30px;
		height:30px;
		cursor:pointer;
	}
</style>
<script>
	function check() {
		var num = document.documentElement.scrollTop;	// 상단으로부터 몇 px 스크롤 되었는지 값을 저장
		// document.body.scrollTop => 문서 상단에 DOCTYPE이 없을 때 사용가능
		document.getElementById("aa").innerText = num;
		document.getElementById("bb").innerText = num;
		document.getElementById("bb").style.top = (300+num)+"px";
	}
	
	document.onscroll = check;
	
	function moveTop() {
		document.documentElement.scrollTop = 0;
	}
</script>
</head>
<body>	<!-- 0623js/scroll.jsp -->
	
	<!-- scroll 이벤트 -->
	<div id="aa"></div>
	<div id="bb"></div>
	<div id="cc"><input type="button" value="↑" onclick="moveTop()"></div>
	Lorem Ipsum <p> Lorem Ipsum <p> Lorem Ipsum <p> Lorem Ipsum <p> Lorem Ipsum <p> 
	Lorem Ipsum <p> Lorem Ipsum <p> Lorem Ipsum <p> Lorem Ipsum <p> Lorem Ipsum <p> 
	Lorem Ipsum <p> Lorem Ipsum <p> Lorem Ipsum <p> Lorem Ipsum <p> Lorem Ipsum <p> 
	Lorem Ipsum <p> Lorem Ipsum <p> Lorem Ipsum <p> Lorem Ipsum <p> Lorem Ipsum <p> 
	Lorem Ipsum <p> Lorem Ipsum <p> Lorem Ipsum <p> Lorem Ipsum <p> Lorem Ipsum <p> 
	Lorem Ipsum <p> Lorem Ipsum <p> Lorem Ipsum <p> Lorem Ipsum <p> Lorem Ipsum <p> 
	Lorem Ipsum <p> Lorem Ipsum <p> Lorem Ipsum <p> Lorem Ipsum <p> Lorem Ipsum <p> 
	Lorem Ipsum <p> Lorem Ipsum <p> Lorem Ipsum <p> Lorem Ipsum <p> Lorem Ipsum <p> 
	Lorem Ipsum <p> Lorem Ipsum <p> Lorem Ipsum <p> Lorem Ipsum <p> Lorem Ipsum <p> 
	Lorem Ipsum <p> Lorem Ipsum <p> Lorem Ipsum <p> Lorem Ipsum <p> Lorem Ipsum <p> 
	Lorem Ipsum <p> Lorem Ipsum <p> Lorem Ipsum <p> Lorem Ipsum <p> Lorem Ipsum <p> 
	Lorem Ipsum <p> Lorem Ipsum <p> Lorem Ipsum <p> Lorem Ipsum <p> Lorem Ipsum <p> 
	Lorem Ipsum <p> Lorem Ipsum <p> Lorem Ipsum <p> Lorem Ipsum <p> Lorem Ipsum <p> 
	Lorem Ipsum <p> Lorem Ipsum <p> Lorem Ipsum <p> Lorem Ipsum <p> Lorem Ipsum <p> 
	Lorem Ipsum <p> Lorem Ipsum <p> Lorem Ipsum <p> Lorem Ipsum <p> Lorem Ipsum <p> 
	Lorem Ipsum <p> Lorem Ipsum <p> Lorem Ipsum <p> Lorem Ipsum <p> Lorem Ipsum <p> 
	Lorem Ipsum <p> Lorem Ipsum <p> Lorem Ipsum <p> Lorem Ipsum <p> Lorem Ipsum <p> 
	Lorem Ipsum <p> Lorem Ipsum <p> Lorem Ipsum <p> Lorem Ipsum <p> Lorem Ipsum <p> 
	Lorem Ipsum <p> Lorem Ipsum <p> Lorem Ipsum <p> Lorem Ipsum <p> Lorem Ipsum <p> 
	Lorem Ipsum <p> Lorem Ipsum <p> Lorem Ipsum <p> Lorem Ipsum <p> Lorem Ipsum <p> 
	Lorem Ipsum <p> Lorem Ipsum <p> Lorem Ipsum <p> Lorem Ipsum <p> Lorem Ipsum <p> 
	
</body>
</html>