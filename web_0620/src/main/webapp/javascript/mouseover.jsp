<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>0620/mouseover</title>
	<script>
		function change1() {
			// 마우스가 올라왔을 때 여러가지 속성을 변경
			document.getElementById("aa").style.background = "seagreen";
			document.getElementById("aa").style.color = "#eeeeee";
			document.getElementById("aa").style.fontSize = "51px";
		}
		function change2(my) {
			my.style.background = "#EBC24D";
			my.style.color = "#F25B41";
			my.style.fontSize = "40px";
		}
		
		function test1() {
			document.getElementById("aa").style.background = "white";
			document.getElementById("aa").style.color = "black";
			document.getElementById("aa").style.fontSize = "15px";
		}
		function test2(my) {
			my.style.background = "white";
			my.style.color = "black";
			my.style.fontSize = "15px";
		}
	</script>
</head>
<body>	<!-- 0620/mouseover -->
	
	<!-- 마우스오버 이벤트태그와 변경할 태그가 다를 때 -->
	<div onmouseover="change1()" onmouseout="test1()"> 마우스를 올리세요 </div>
	<div id="aa"> 감사합니다 </div>
	
	<p><hr><p>
	
	<!-- 마우스오버 이벤트태그와 변경할 태그가 다를 때 -->
	<div onmouseover="change2(this)" onmouseout="test2(this)"> 안녕하세요 </div>
	
	
</body>
</html>