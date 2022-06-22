<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>0622js/blur2</title>
<style>
	#aa {
		color:red;
		font-size:14px;
	}
</style>
<script>
	function check() {
		var pwd = document.dhr.pwd.value;
		var pwd2 = document.dhr.pwd2.value;
		if(pwd != pwd2) {
			document.getElementById("aa").innerText = "비밀번호가 다릅니다.";
		}
		else {
			document.getElementById("aa").innerText = "";
		}
	}
</script>
</head>
<body>	<!-- 0622js/blur2 -->
	
	<form name="dhr">
		비밀번호 <input type="password" name="pwd"> <p>
		비밀번호 확인 <input type="password" name="pwd2" onblur="check()"> <p>
		<span id="aa"></span>
	</form>
	
</body>
</html>