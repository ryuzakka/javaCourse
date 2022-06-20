<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>0620/this</title>
<script>
	function check() {
		// 태그를 클릭하여 함수를 호출했을 때 => body내에 있는 요소를 변경하는 작업을 주로 함
		// 클릭하는 태그와 요소를 변경할 태그가 동일하다면 this를 이용한다.
		// ex) div태그의 요소를 변경할 경우 사용. span태그의 요소를 변경할 경우는 this를 사용못함.
		document.getElementById('aa').style.color = "red";
	}
	function check2(my) {
		// 클릭요소와 작업요소가 같다면 this로 간단히 연결
		my.style.color = "blue";
	}
</script>
</head>
<body>	<!-- 0620/this -->
	<!-- this는 자바스크립트를 호출할 때 자기 자신의 객체(태그)를 전달하는 방법 -->
	
	<div onclick="check()"> Hi, there</div><p>
	<span id="aa"> 하하하 </span>
	
	<hr>
	
	<!-- Guten Tag 글자를 클릭하면 Guten Tag 글자를 파란색 -->
	<div onclick="check2(this)"> Guten Tag </div>
	
</body>
</html>