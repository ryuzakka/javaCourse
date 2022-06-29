<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>parent2</title>
<script>
	let s1; // 자식 이름
	
	// 새 창 열기
	function openson() {
		s1 = open("son2.jsp", "aa", "left=1000, top=200, width=500, height=200");
	}
	
	// 자식에게 값 전달하기
	function sendToSon() {
		
		s1.document.sonny.name.value = document.papa.name.value;
		s1.document.sonny.age.value = document.papa.age.value;

		// 본인(부모)의 문서
		//var name = document.papa.name.value;
		//var age = document.papa.age.value;
		
		// 자식의 문서
		//var son = s1.document.sonny;
		//son.name.value = name;
		//son.age.value = age;
	}
	
</script>
</head>
<body>
	
	<!-- 새 창(자식) 열기 -->
	<input type="button" onclick="openson()" value="자식 나와라"> <p>
	
	<!-- 자식에게 보내줄 값을 입력하는 폼 -->
	<form name="papa" method="post" action="" onsubmit="sendToSon()">
		<input type="text" name="name" placeholder="이름">
		<input type="text" name="age" placeholder="나이">
		<input type="submit" value="자식에게">
	</form>
	<hr>
	
	<!-- target 속성 알아보기 : open으로 자식 창 열고, 동일한 타겟명으로 문서이동을 할 경우 -->
	<a href="isnan.jsp" target="aa">isnan문서보기</a>
	
</body>
</html>