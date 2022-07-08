<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>move</title>
<style>
	#main {
		position:relative;		
		width:150px;
		height:30px;
		margin-left:200px;
		border:1px solid red;
		overflow:hidden;
	}
	#sub{
		position:absolute;
		margin-left:10px;
		
	}
	#sub > div {
		margin-top:3px;
	}
</style>
<script>
	function start() {
		var t = 0;
		var ss = setInterval(function(){
			t--;
			document.getElementById('sub').style.top = t+"px";
			if(t < -191)
				t = 0;
		},50);
	}
</script>
</head>
<body onload="start()">	<!-- 0708/javascript/move.jsp -->
	
	<div id="main">
		<div id="sub">
			<div> 해운대 해수욕장 </div>
			<div> 망상 해수욕장 </div>
			<div> 속초 해수욕장 </div>
			<div> 장사 해수욕장 </div>
			<div> 연포 해수욕장 </div>
			<div> 진하 해수욕장 </div>
			<div> 일광 해수욕장 </div>
			<div> 송도 해수욕장 </div>
		</div>
	</div>
	
</body>
</html>