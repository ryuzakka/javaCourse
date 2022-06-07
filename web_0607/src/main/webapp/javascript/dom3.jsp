<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DOM 3</title>
<script>
	function change() {
		document.getElementsByClassName("aa")[0].align = "right";
		document.getElementsByClassName("aa")[0].style.color = "green";
		document.getElementsByClassName("aa")[1].style.color = "pink";
		document.getElementsByClassName("aa")[2].style.color = "hotpink";
		document.getElementsByClassName("aa")[3].style.color = "red";
	}
</script>
</head>
<body>
	<!-- 태그 요소를 class로 접근하기 -->
	<input type="button" onclick="change()" value="function call"><p>
	<div class="aa">Lorem Ipsum</div><p>
	<div class="aa">Lorem Ipsum</div><p>
	<div class="aa">Lorem Ipsum</div><p>
	<div class="aa">Lorem Ipsum</div><p>
	<div class="aa">Lorem Ipsum</div><p>
	<div class="aa">Lorem Ipsum</div><p>

</body>
</html>