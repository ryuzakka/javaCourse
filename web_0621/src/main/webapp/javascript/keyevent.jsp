<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>0621js/keyevent</title>
<script>
	function chk() {
		alert();
	}
</script>
</head>
<body>	<!-- 0621js/keyevent -->
	<!-- keydown, keypress, keyup -->
	<!--
		keydown과 keypress는 키를 누를때 발생하는 동일한 이벤트이지만, 특수키에 대한 처리 다름.
		keyup은 키를 눌렀다 뗄 때 발생
	-->
	
	<input type="text" onkeydown="chk()" placeholder="keydown"> <p>
	<input type="text" onkeypress="chk()" placeholder="keypress"> <p>
	<input type="text" onkeyup="chk()" placeholder="keyup"> <p>
	
	
</body>
</html>