<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>0627/move2</title>
<style>
	#aa {
		position:absolute;
		left:100px;
		top:200px;
		width:140px;
		height:140px;
		background:orange;
	}
</style>
<script>
	//var left = 100;
	//var ss;
	//var direct = 1;
	
	function start() {
		var left = 100;
		var direct = 1;
		var ss;
		
		ss = setInterval(function() {
			if(direct == 1)
				left++;
			else
				left--;
			
			document.getElementById('aa').style.left = left+"px";
			
			if(left == 400)
				direct = 2;
			else if(left == 100)
				direct = 1;
		}, 2);
	}
</script>
</head>
<body>	<!-- 0627/move5.jsp -->
	
	<!-- 오른쪽으로 갔다가 left가 400이 되면 왼쪽으로 왔다가 다시 100이 되면 오른쪽으로 반복 이동하기 -->
	<div id="aa"> </div> <p>
	<input type="button" value="Click Me to Start!" onclick="start()"><br>

	
</body>
</html>