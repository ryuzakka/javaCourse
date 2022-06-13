<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board2/test</title>
<style>
	#aa { visibility:hidden; }
</style>
<script>
	function view() {
		document.getElementById("aa").style.visibility = "visible"; 
	}
</script>
</head>
<body>
	<td> <span onclick="view()">오늘은 월요일입니다.</span> </td>	<!-- 클릭하면 비밀번호 입력창이 보이게 -->
	<form id="aa">
		비번 <input type="password" name="pwd">
	</form>
</body>
</html>