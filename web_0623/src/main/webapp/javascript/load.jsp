<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>0623js/load</title>
<script>
	function init() {
		document.getElementById("aa").innerText = "haha";
	}
</script>
</head>
<body onload="init()">	<!-- 0623js/load.jsp -->
	<!-- load이벤트 : 문서를 읽을 때 -->
	<div id="aa"></div>
	
</body>
</html>