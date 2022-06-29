<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>son2</title>
<script>
	
	// 부모에게 값 전달하기
	function sendToPapa() {
		var name = document.sonny.name.value;
		var age = document.sonny.age.value;
		
		var papa = opener.document.papa;
		papa.name.value = name;
		papa.age.value = age;
		
	}
	
</script>
</head>
<body>
	<div> 네, 아버지! </div><p>
	
	<!-- 부모에게 보내줄 값을 입력하는 폼 -->
	<form name="sonny" method="post" action="" onsubmit="sendToPapa()">
		<input type="text" name="name" placeholder="이름" value="홍길동">
		<input type="text" name="age" placeholder="나이" value="12">
		<input type="submit" value="부모에게">
	</form>
	
</body>
</html>