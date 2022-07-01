<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>client-cookie</title>
<script>
	// 문서를 읽을 때 쿠키를 생성
	document.cookie = "name = 스파이더맨";
	document.cookie = "age = 23";
	
	function view() {
		console.log(document.cookie);
		// cook.innerText = document.cookie;	// 옛날 방식
		// document.all.cook => cook 접근.. 옛날에는 id로만 접근할 수 있었다고 한다..
	}
	function del() {
		// 오늘 날짜를 어제 날짜로 변경
		var today = new Date();
		console.log(today.getDate() +" "+ today.toGMTString());

		today.setDate(today.getDate()-1);
		document.cookie = "name=;expires=" + today.toGMTString();
		document.cookie = "age=;expires=" + today.toGMTString();
		
		console.log(today.getDate() +" "+ today.toGMTString());
	}
</script>
</head>
<body>	<!-- 0701/client_cookie -->
	
	<input type="button" onclick="view()" value="쿠키보기">
	<input type="button" onclick="del()" value="쿠키삭제">
	<hr>
	<span id="cook"></span>
</body>
</html>