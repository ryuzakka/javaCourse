<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>0622js/blur</title>
<style>
	#aa {
		color:red;
		font-size:13px;
	}
</style>
<script>
	function check(my) {
		if(my.value.trim() == "") {
			my.focus();	// 입력칸을 입력하지 않으면 다른칸으로 움직이지 못함 
			document.getElementById("aa").innerText ="이름을 입력하세요.";
		}
		else {			
			document.getElementById("aa").innerText ="";
		}
	}
</script>
</head>
<body>	<!-- 0622js/blur -->
	
	<form name="dhr">
		<input type="text" name="name" placeholder="이름" onblur="check(this)">
		<br><span id="aa"></span><p>
		<input type="text" name="age"> <p>
		<input type="submit" value="전송">
	</form>
	
</body>
</html>