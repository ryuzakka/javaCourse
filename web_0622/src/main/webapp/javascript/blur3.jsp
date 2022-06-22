<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>0622js/blur3</title>
<script>
	function check() {
		var pwd = document.dhr.pwd.value;
		var pwd2 = document.dhr.pwd2.value;
		
		if(pwd != pwd2) {
			document.getElementById("aa").innerText = "비밀번호가 틀립니다.";
			document.getElementById("aa").style.color = "red";
		}
		else {
			document.getElementById("aa").innerText = "비밀번호가 일치합니다.";
			document.getElementById("aa").style.color = "blue";
		}
	}
</script>
</head>
<body>	<!-- 0622js/blur3 -->
	
	<form name="dhr">
		비밀번호 <input type="password" name="pwd"> <p>
		비밀번호 확인 <input type="password" name="pwd2" onkeyup="check()"> <p>
		<span id="aa"></span>
	</form>
	
</body>
</html>