<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>auto change 2</title>
<script>
	var pics=["bg1.jpg","bg2.jpg","bg3.jpg","bg4.jpg"];
	var chk = 0;
	function auto_change() {
		setInterval(function(){			
			if(chk >= pics.length)
				chk = 0;
			document.getElementById('dhr').src = pics[chk];
			chk++;
		},400);
	}
</script>
</head>
<body>
	
	<!-- img 내용을 자동으로 바꾸기 -->
	<input type="button" onclick="auto_change()" value="Click me!">
	<p>
	<img src="bg4.jpg" id="dhr" width="400">
	
</body>
</html>