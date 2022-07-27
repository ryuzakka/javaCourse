<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>text scroll</title>
<style>
	#main {
		margin-left:80px;
		margin-top:220px;
		width:200px;
		height:36px;
		border:1px solid navajowhite;
		overflow:hidden;
	}
	#sub {
		width:200px;
		height:360px;
		border:1px solid lightsalmon;
		padding:0px;
		margin:0px;
	}
	#sub li {
		list-style:none;
		width:200px;
		height:36px;
		display:flex;
		align-items:center;		/* 상하 정렬 */
		justify-content:center;	/* 좌우 정렬 */
	}
</style>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script>
	$(function(){
		var h = 0;
		setInterval(function(){
			var ss = setInterval(function(){
				h--;
				$('#sub').css("margin-top", h);
				if(h == -36) {
					clearInterval(ss);
					$('li').eq(0).insertAfter($('li').eq(9));
					$('#sub').css("margin-top", "0px");
					h = 0;
				}
			},10);
		},1000);
	});
</script>
</head>
<body>

	<div id="main">
		<ul id="sub">
			<li> 속초 해수욕장 </li>
			<li> 장사 해수욕장 </li>
			<li> 망상 해수욕장 </li>
			<li> 울진 해수욕장 </li>
			<li> 고래불 해수욕장 </li>
			<li> 진하 해수욕장 </li>
			<li> 일광 해수욕장 </li>
			<li> 해운대 해수욕장 </li>
			<li> 광안리 해수욕장 </li>
			<li> 대천 해수욕장 </li>
			<!-- <li> 해수욕장 </li> -->
		</ul>
	</div>
	
</body>
</html>