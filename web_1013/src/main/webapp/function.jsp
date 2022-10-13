<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function func1() {
		alert("1");
	}
	function func2() {
		alert("2");
	}
	function func3() {
		alert("3");
	}
</script>
</head>
<body>
	
	<!-- 태그 요소 내에서 이벤트 핸들러 = 함수명() -->
	
	<div onclick="func1()"> Click Here! </div> <p>
	<span onmouseover="func2()"> Click Me! </span> <p>
	<input type="button" value="click me" onclick="func3()" />
	
</body>
</html>