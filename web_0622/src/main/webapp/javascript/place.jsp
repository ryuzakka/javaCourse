<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>0622js/place</title>
<script>
	function inn(my) {
		my.value = "";
	}
	
	function outt(my) {
		if(my.value.trim() == "")
			my.value = "이 름";
	}
</script>
</head>
<body>	<!-- 0622js/place -->
	
	<input type="text" placeholder="이 름">
	<hr>
	<input type="text" onfocus="inn(this)" onblur="outt(this)" value="이 름">
</body>
</html>