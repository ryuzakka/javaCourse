<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>0615/multi_input</title>
<style>
	body { margin:40px; }
</style>
<script>
	function formChange(n) {
		if(n == 0) {
			document.dhr.action = "multi_input_ok.jsp";
			document.dhr.submit.value = "입력";
			document.dhr.id.style.display = "none";
		}
		else {			
			document.dhr.action = "multi_update_ok.jsp";
			document.dhr.submit.value = "수정";
			document.dhr.id.style.display = "inline";
		}
	}
</script>
</head>
<body>	<!-- multi_input -->

	<!-- multi테이블에 이름과 나이를 입력하는 폼 -->
	<!-- <form method="post" action="multi_input_ok.jsp">
		<input type="text" name="name" placeholder="이름" size="5">
		<input type="text" name="age" placeholder="나이" size="5">
		<input type="submit" value="submit">
	</form>
	<p><hr><p>
	<form method="post" action="multi_update_ok.jsp">
		<input type="text" name="id" size="2">
		<input type="text" name="name" placeholder="이름" size="5">
		<input type="text" name="age" placeholder="나이" size="5">
		<input type="submit" value="submit">
	</form> -->
	
	<p><hr><p>
	
	<!-- 위의 두 폼을 하나라 합친 폼 -->
	<span onclick="formChange(0)">입력</span> <br>
	<span onclick="formChange(1)">수정</span>
	<form name="dhr" method="post" action="multi_input_ok.jsp">
		<input type="text" name="id" size="2">
		<input type="text" name="name" size="5" placeholder="이름">
		<input type="text" name="age" size="5" placeholder="나이">
		<input type="submit" name="submit" value="submit">
	</form>
</body>
</html>