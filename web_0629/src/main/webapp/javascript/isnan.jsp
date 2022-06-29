<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>isNaN</title>
<script>
	function check(my) {	// my == document.dhr
		/* NaN : Not a Number */
		// 순수하게 숫자이면 => false
		// 문자가 있으면 => true
		
		var age = my.age.value;
		// alert(isNaN(age));
		
		if(isNaN(age)) {
			alert("only number");
			return false;
		}
		else {
			return true;
		}
		
	}
</script>
</head>
<body>	<!-- 0629/isnan.jsp -->
	
	<form name="dhr" onsubmit="return check(this)">
		<input type="text" name="age" placeholder="나이">
		<input type="submit" value="전송">
	</form>
</body>
</html>