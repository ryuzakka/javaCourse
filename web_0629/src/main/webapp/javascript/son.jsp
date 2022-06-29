<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>son</title>
<script>
	function colorChange() {
		opener.document.getElementById('aa').style.color = "hotpink";
	}
	function test() {
		alert("test");
	}
</script>
</head>
<body>	<!-- 0629/son.jsp -->
	
	<span id="aa"> Mr. Son </span> <p>
	<b onclick="colorChange()"> 부모 색 바꾸기 </b>
	
</body>
</html>