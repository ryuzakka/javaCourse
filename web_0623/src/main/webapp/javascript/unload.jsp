<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>0623js/unload</title>
<script>
	window.unload=function() {
		alert();
	}
</script>
</head>
<body onunload="bye()">	<!-- 0623js/unload.jsp -->
	<a href="http://localhost:8080/web_0623/javascript/load.jsp"></a>
</body>
</html>