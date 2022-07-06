<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>toggle</title>
<script>
	var chk = 0;
	function change(my) {
		if(chk == 0) {
			my.src = "bg2.jpg";
			chk = 1;
		} else {
			my.src = "bg1.jpg";
			chk = 0;
		}
	}
</script>
</head>
<body>
	
	<img src="bg1.jpg" width="400" onclick="change(this)">
	
</body>
</html>