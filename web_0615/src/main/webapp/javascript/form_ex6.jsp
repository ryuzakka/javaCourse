<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>0615/form_ex6</title>
<script>
	function change(name, age) {
		document.getElementsByClassName("usrname")[0].innerText = name;
		document.getElementsByClassName("usrname")[1].innerText = name;
		document.getElementById('usrage').innerText = age;
	}
	function chg(mytag) {
		document.getElementsByClassName("usrname")[0].innerText = mytag.innerText;
		document.getElementsByClassName("usrname")[1].innerText = mytag.innerText;
	}
</script>
</head>
<body>	<!-- 0615/form_ex6 -->
	<!-- 자바스크립트를 이용한 텍스트 내용을 변경하기 -->

	<!-- 이름을 클릭하면 아래의 있는 ??? 를 이릅으로 변경하기 -->
	
	<span onclick="change('홍길동', 12)"> 홍길동 </span>
	<span onclick="change('슈퍼맨', 23)"> 슈퍼맨 </span>
	<span onclick="change('배트맨', 34)"> 배트맨 </span>
	<span onclick="chg(this)"> 야만용사 </span>
	<span onclick="chg(this)"> 성전사 </span>
	<span onclick="chg(this)"> 악마사냥꾼 </span>
	<span onclick="chg(this)"> 강령술사 </span>
	<span onclick="chg(this)"> 수도사 </span>
	<hr><p>
	<div> 환영합니다, <span class="usrname"></span>님. </div><p>
	<div> <span class="usrname"></span>님의 현재 나이는 <span id="usrage"></span> 입니다. </div><p>
	
</body>
</html>