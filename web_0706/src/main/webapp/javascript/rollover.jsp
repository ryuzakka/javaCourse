<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>rollover</title>
<script>
	function txt_change(n) {
		if(n == 0)
			document.getElementById('aa').innerText = "Buon giorno!";
		else
			document.getElementById('bb').innerText = "Grazie!";
	}
	function txt_reset(my, txt) {		
		my.innerText = txt;
	}
	function img_change(n) {
		if(n == 0)
			document.getElementById('cc').src = "bg3.jpg";
		else
			document.getElementById('dd').src = "bg4.jpg";
	}
	function img_reset(my, data) {
		my.src = data;
	}
</script>
</head>
<body>	<!-- 0706/js/rollover.jsp -->
	
	<!-- 그림, 텍스트에 마우스가 올라가면 바뀌는거 -->
	<span id="aa" onmouseover="txt_change(0)" onmouseout="txt_reset(this, '안녕하세요.')"> 안녕하세요. </span>
	<span id="bb" onmouseover="txt_change(1)" onmouseout="txt_reset(this, '감사합니다.')"> 감사합니다. </span> <p>
	
	<img src="bg1.jpg" width="300" id="cc" onmouseover="img_change(0)" onmouseout="img_reset(this, 'bg1.jpg')">
	<img src="bg2.jpg" width="300" id="dd" onmouseover="img_change(1)" onmouseout="img_reset(this, 'bg2.jpg')">
	
</body>
</html>