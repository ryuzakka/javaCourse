<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DOM 1</title>
<script>
	function change() {
		/* 자바스크립트에서 태그이름으로 요소를 접근하기 */
		var tag = document.getElementsByTagName("div")[1];	// 현재 문서에서 div태그를 가리킨다.
		tag.align = "center";	// align이라는 태그의 속성
		document.getElementsByTagName("div")[4].style.color = "red";	// color라는 스타일 속성
	}
</script>
</head>
<body>
	<!-- 태그 요소에 DOM을 통하여 접근하기 -->
	<input type="button" onclick="change()" value="function call"><p>
	<div>안녕하세요</div><p>
	<div>안녕하세요</div><p>
	<div>안녕하세요</div><p>
	<div>안녕하세요</div><p>
	<div>안녕하세요</div><p>
	<div>안녕하세요</div><p>
	<div>안녕하세요</div><p>
</body>
</html>