<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>0621js/keypress</title>
	<script>
		function chk() {
			alert(event.keyCode);
		}
		function move() {
			if(event.keyCode == 8) {
				location = "http://localhost:8080/web_0621/javascript/keyevent3.jsp";
			}
		}
		function move2(my) {
			if(event.keyCode == 65) {
				my.disabled = "false";
			}
		}
	</script>
</head>
<body>	<!-- 0621js/keypress -->
	
	<input type="text" onkeydown="chk()"> <p>
	<input type="text" onkeypress="chk()"> <p>
	
	<input type="text" onkeydown="move()"> * esc를 누르면 취소되고 이동됩니다. <p>
	<input type="text" onkeydown="move2(this)" placeholder="press a"> <p>
	
</body>
</html>