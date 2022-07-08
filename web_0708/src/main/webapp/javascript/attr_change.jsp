<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>attribute change</title>
<style>
	#dhr {
		width:220px;
		height:40px;
		border:1px solid green;
		display:flex;
		align-items:center;
	}
	#pwd {
		border:none;
		outline:none;
		margin-left:10px;
		height:23px;
	}
	#right {
		padding-top:10px;
	}
</style>
<script>
	var chk = 0;
	function change() {
		if(chk == 0) {
			document.getElementById('pwd').type = "text";
			document.getElementById('img').src = "img/visoff.png";
			chk = 1;
		}
		else {
			document.getElementById('pwd').type = "password";
			document.getElementById('img').src = "img/vis.png";
			chk = 0;
		}
		
	}
</script>
</head>
<body>	<!-- 0708/javascript/attr_change.jsp -->
	
	<div id="dhr">
		<form>
			<input type="password" id="pwd">
			<span id="right" onclick="change()"><img src="img/vis.png" id="img" width="30"></span>
		</form>
	</div>
	
</body>
</html>