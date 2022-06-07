<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DOM 2</title>
<script>
	function change() {
		// id로 접근할 때는 가장 위에 있는 하나만 적용
		document.getElementById("aa").align = "center";
		document.getElementById("aa").style.color = "yellowgreen";
	}
	function change2() {
		// 옛날방식
		document.all.aa[1].style.color = "red";
		document.all.aa[2].style.color = "blue";
		document.all.aa[3].style.color = "pink";
		document.all.aa[4].style.color = "hotpink";
	}
</script>
</head>
<body>
	<!-- 태그 요소를 id로 접근하기 -->
	<input type="button" onclick="change()" value="function call"><p>
	<input type="button" onclick="change2()" value="old school style"><p>
	<div id="aa">Lorem Ipsum</div><p>
	<div id="aa">Lorem Ipsum</div><p>
	<div id="aa">Lorem Ipsum</div><p>
	<div id="aa">Lorem Ipsum</div><p>
	<div id="aa">Lorem Ipsum</div><p>
	<div id="aa">Lorem Ipsum</div><p>
	<div id="aa">Lorem Ipsum</div><p>
</body>
</html>