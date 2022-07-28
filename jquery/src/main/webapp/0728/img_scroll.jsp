<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#main {
		width:200px;
		height:281px;
		/* border:1px solid salmon; */
		margin-left:400px;
		overflow:hidden;
	}
	#main #sub {
		width:2300px;
		height:281px;
		/* border:1px solid lightsalmon; */
		padding-left:0px;
		margin-top:0px;
	}
	#main #sub li {
		list-style:none;
		display:inline-block;
		width:200px;
		height:281px;
	}
	#main #sub li img {
		width:200px;
		height:281px;
	}
</style>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script>
 	$(function(){
		var w = 0;
		setInterval(function(){
			var ss = setInterval(function(){
				w--;
				$('#sub').css("margin-left", w);
				if(w == -200) {
					clearInterval(ss);
					$('li').eq(0).insertAfter($('li').eq(11));
					$('#sub').css("margin-left", "0px");
					w = 0;
				}
			});
		},1000);
	});
</script>
</head>
<body>
	
	
	<div id="main">
		<ul id="sub">
			<li><img src="AQUARIUS.jpg"></li><li><img src="ARIES.jpg"></li><li><img src="CANCER.jpg"></li><li><img src="CAPRICORN.jpg"></li><li><img src="GEMINI.jpg"></li><li><img src="LEO.jpg"></li><li><img src="LIBRA.jpg"></li><li><img src="PISCES.jpg"></li><li><img src="SAGITTARIUS.jpg"></li><li><img src="SCORPIO.jpg"></li><li><img src="TAURUS.jpg"></li><li><img src="VIRGO.jpg"></li>
			<!-- <li><img src="" width="100" height="300"></li> -->
		</ul>
	</div>
	
</body>
</html>










