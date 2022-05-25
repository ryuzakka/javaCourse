<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>css:text-align</title>
	<!-- <link rel="stylesheet" type="text/css" href="style.css"> -->
	<style>	
		/* style에서 속성을 통한 좌우 정렬 */
		div { text-align:right; }
		span { text-align:center; }	/* inline태그는 text-align 속성은 의미없음 */
	</style>
</head>
<body>	<!-- text-align:정렬 -->
	
	<div>Lorem ipsum dolor sit amet</div>
	<div>Lorem ipsum dolor sit amet</div>
	<hr>
	<span>Lorem ipsum dolor sit amet</span>	
	<span>Lorem ipsum dolor sit amet</span>
	<hr>
	
</body>
</html>