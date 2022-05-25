<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>border1</title>
	<style>
		#aa {
			border-style:solid;	/* 선의 모양 */
			border-color:#19ce60;	/* 선의 색 */
			border-width:3px;	/* 선의 굵기 */
			padding:15px;
			margin:40px 10px;
			width:600px;	/* 가로 크기 */
			height:120px;	/* 세로 크기 */
		}
		#bb {
			width:400px;
			height:35px;
			border:solid 2px #DE3A14;
			
		}
		p {
			margin-bottom:32px;
		}
	</style>
</head>
<body>
	<!-- 외곽선 관련 태그 -->
	<div id="aa">Lorem ipsum dolor sit amet</div> <p>
	<span id="aa">Lorem ipsum dolor sit amet</span> <br>
	<hr>
	
	<div id="bb"> Lorem ipsum dolor sit amet</div> <p> <hr>
	
</body>
</html>