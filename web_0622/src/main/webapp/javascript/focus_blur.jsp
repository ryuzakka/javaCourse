<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>0622js/focus_blur</title>
<style>
	input[type=text] {
		border:1px solid #cccccc;
		outline:none;	/* 아웃라인 제거 */
	}
</style>
<script>
	/* onfocus : input 필드에 들어갔을 때 */
	function cursorin(my) {
		my.style.background = "skyblue";
	}
	
	/* onblur : input 필드에서 나올 때	*/
	function cursorout(my) {
		my.style.background = "lightgrey";
	}
</script>
</head>
<body>	<!-- 0622js/focus_blur -->
	
	<!-- focus, blur => text입력폼  -->
	<input type="text" onfocus="cursorin(this)" onblur="cursorout(this)">

</body>
</html>