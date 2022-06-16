<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>0615/open</title>
</head>
<script>
	function winOpen() {
		// 자바스크립트 함수를 통해 새로운 창 띄우기
		// window.open();	// window는 생략가능
		open("comment_update.jsp", "open", "width=700,height=200");	// open("나타낼문서orURL", "창이름", "창의 옵션")
		
	}
</script>
<body>	<!-- open.jsp -->
	<!-- 현재 브라우저에서 새로운 창을 띄우기 -->
	<span onclick="winOpen()">창 띄우기</span>
</body>
</html>