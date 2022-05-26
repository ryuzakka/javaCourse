<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>text-align 2</title>
	<link rel="stylesheet" type="text/css" href="style.css">
	<style>
		body {
			font-family:'Goyang';
			font-size:36px;
		}
		div {
			width:400px;
			height:100px;
			border:2px solid darkorange;
		}
		#aa {	/* 태그를 테이블속성을 부여 */
			display:table-cell;
			text-align:center;
			vertical-align:middle;
		}
		#bb {
			display:flex;
			align-items:center;		/* 상하 */
			justify-content:center;	/* 좌우 */
		}
		#cc {
			text-align:center;
			height:76px;
			padding-top:22px;
		}
	</style>
</head>
<body>
	<!-- text-align => 좌우정렬, 상하정렬 -->
	<div id="aa"> 스포츠의류 </div> <p>
	<div id="bb"> 가공품 </div> <p>
	<div id="cc"> 장난감 </div> <p>
	
</body>
</html>