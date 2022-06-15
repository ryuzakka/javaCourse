<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>0615/form_ex5</title>
</head>
<script>
	function chgLoc(n) {
		if(n == 0){
			document.dhr.action = "a.jsp";
		} else if(n == 1) {
			document.dhr.action = "b.jsp";
		} else {
			document.dhr.action = "c.jsp";
		}
	}
</script>
<body>
	<!-- 하나의 폼태그로 여러개의 문서로 전달 -->
	<span onclick="chgLoc(0)">a.jsp</span><p>
	<span onclick="chgLoc(1)">b.jsp</span><p>
	<span onclick="chgLoc(2)">c.jsp</span><p>
	<hr>
	<form name="dhr" method="post" action="">	<!-- 해당 폼 1개를 이용하여 다른 jsp로 전달 -->
		<input type="submit" value="submit">
	</form>
	<hr>
</body>
</html>