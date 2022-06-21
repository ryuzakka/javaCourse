<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>0621js/keyevent2</title>
<script>
	function chk() {
		return false;
	}
</script>
</head>
<body>	<!-- 0621js/keyevent2 -->
	<!--
		누를 때, 눌렀다 뗄 때를 이용하여 확인
	-->
	
	<input type="text" onkeydown="return chk()" placeholder="keydown"> <p>
	<input type="text" onkeypress="return chk()" placeholder="keypress"> <p>
	<input type="text" onkeyup="return chk()" placeholder="keyup"> 
	
</body>
</html>