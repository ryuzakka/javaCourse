<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
	$(function(){
		$("#aa").click(function(){alert("aa")});
		$("#bb").on("click", function(){alert("bb")});		// addEventListener
		$("#cc").one("click", function(){alert("cc")});	// once 실행
		$("#dd").click("click", function(){	// removeEventListener
			$("#aa").off("click");
		});	
	});
</script>
</head>
<body>
	
	<div id="aa"> Click Here! </div> <p>
	<div id="bb"> Click Here! </div> <p>
	<div id="cc"> Click Here! </div> <p>
	<div id="dd"> Click Here! </div> <p>
	
</body>
</html>