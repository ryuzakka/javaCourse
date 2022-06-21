<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>0621js/keyevent3</title>
<script>
	function check() {
		alert(event.keyCode);
	}
</script>
</head>
<body>	<!-- 0621js/keyevent3 -->
	
	<input type="text" onkeydown="check()" placeholder="keydown : 특수키의 값을 알 수 있음" size="30"> <p>
	<input type="text" onkeypress="check()" placeholder="keypress : 특수키의 값은 알 수 없음" size="30"> <p>
	
	
</body>
</html>