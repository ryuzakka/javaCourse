<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>0620/menu</title>
<style>
	li {
		list-style-type:none;
		display:inline-block;
		width:120px;
		height:35px;
		border:1px solid red;
		text-align:center;
		padding-top:10px;
	}
</style>
<script>
	/* li */
	function over(my) {
		my.style.background = "#F25B41";
		my.style.color = "#fff";
	}
	function out(my) {
		my.style.background = "#fff";
		my.style.color = "#000";
	}
	
	/* img */
	function over1(my) {
		my.src = "img/Hydrangeas.jpg";
	}
	function out1(my) {
		my.src = "img/Tulips.jpg";
	}
</script>
</head>
<body>	<!-- 0620/menu -->
	
	<ul>
		<li onmouseover="over(this)" onmouseout="out(this)"> 농수산 </li>
		<li onmouseover="over(this)" onmouseout="out(this)"> 수산물 </li>
		<li onmouseover="over(this)" onmouseout="out(this)"> 가공품 </li>
		<li onmouseover="over(this)" onmouseout="out(this)"> 건강식품 </li>
		<li onmouseover="over(this)" onmouseout="out(this)"> 기타 </li>
	</ul>
	
	<p><hr><p>
	
	<img src="img/Tulips.jpg" width="200" onmouseover="over1(this)" onmouseout="out1(this)">
	
	
</body>
</html>