<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>auto change 1</title>
<script>
	var news=["오늘은","WednesDay","Tmmr","is","ThursDay","and","Friday comming Soon!"];
	var chk = 0;
	function auto_change() {
		setInterval(function(){			
			if(chk >= news.length)
				chk = 0;
			document.getElementById('dhr').innerText = news[chk];
			chk++;
		},400);
	}
</script>
</head>
<body>
	
	<!-- text 내용을 자동으로 바꾸기 -->
	<input type="button" onclick="auto_change()" value="Click me!">
	<div id="dhr">Buongiorno!</div>
	
</body>
</html>