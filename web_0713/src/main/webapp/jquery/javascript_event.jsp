<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	window.onload = function(){	// 문서를 읽을 때 실행
		document.getElementById('aa').onclick = function() {
			console.log('aa Click!');
		};
		
		document.getElementById('bb').onclick=check;
		
		document.getElementById('cc').onclick=function() {
			console.log('밖에 있으면 실행 안되요~');
		};
	};
	function check() {
		console.log('bb check!');
	}
</script>
</head>
<body>
	<div id="aa">Click Me</div>
	<div id="bb">Check Me</div>
	<div id="cc">cc기</div>
</body>
</html>