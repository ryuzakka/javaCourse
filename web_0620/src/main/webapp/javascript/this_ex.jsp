<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>0620/this_ex</title>
	<script>
		function view(my) {
			my.style.background = "yellow";
		}
		function leave(my) {
			my.style.background = "white";
		}
	</script>
</head>
<body>	<!-- 0620/this_ex -->
	
	<div class="aa" onmouseover="view(this)" onmouseout="leave(this)"> Lorem ipsum </div>
	<div class="aa" onmouseover="view(this)" onmouseout="leave(this)"> Lorem ipsum </div>
	<div class="aa" onmouseover="view(this)" onmouseout="leave(this)"> Lorem ipsum </div>
	<div class="aa" onmouseover="view(this)" onmouseout="leave(this)"> Lorem ipsum </div>
	<div class="aa" onmouseover="view(this)" onmouseout="leave(this)"> Lorem ipsum </div>
	<div class="aa" onmouseover="view(this)" onmouseout="leave(this)"> Lorem ipsum </div>
	<div class="aa" onmouseover="view(this)" onmouseout="leave(this)"> Lorem ipsum </div>
	<div class="aa" onmouseover="view(this)" onmouseout="leave(this)"> Lorem ipsum </div>
	<div class="aa" onmouseover="view(this)" onmouseout="leave(this)"> Lorem ipsum </div>
	<div class="aa" onmouseover="view(this)" onmouseout="leave(this)"> Lorem ipsum </div>
	
</body>
</html>