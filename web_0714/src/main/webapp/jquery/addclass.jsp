<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jQuery/addClass1</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script>
	function change() {
		document.getElementById("aa").style.color = "deeppink";
		document.getElementById("aa").style.fontSize = "24px";
		document.getElementById("aa").style.border = "1px solid orange";
		document.getElementById("aa").style.width = "200px";
		document.getElementById("aa").style.height = "34px";
	}
</script>
</head>
<body>
	<!-- id="aa"인 요소의 글자색,크기,외곽선,가로,세로를 적용 -->
	<!-- 안녕하세요 클릭되면 스타일 변경 -->
	
	<div id="aa" onclick="change()"> 안녕하세요 </div>
	
</body>
</html>