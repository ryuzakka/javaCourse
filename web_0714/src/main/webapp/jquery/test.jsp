<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#content {
		width:400px;
		height:400px;
		border:1px solid red;
	}
	li {
		display:inline-block;
		background:yellow;
	}
	#aa {
		width:400px;
		height:400px;
		border:1px solid red;
	}
</style>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script>
	function move() {
		//document.getElementById("aa").innerHTML = document.getElementById('content').value;
		$('#aa').html($('#content').val());
	}
</script>
</head>
<body>
	
	<ul>
		<li>
			<textarea cols="40" rows="6" id="content"></textarea>
		</li>
		<input type="button" onclick="move()" value="이동">
		<li id="aa">
		</li>
	</ul>
	
</body>
</html>