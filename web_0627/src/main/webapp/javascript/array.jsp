<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>0627js/array</title>
<script>
	
	/* new 연산자를 이용하여 배열 만들기 */
	var arr = new Array(5);	// 크기가 5인 배열 arr을 만들어라
	
	/* 자바스크립트의 배열에 특이점 */
	// 1. 자바스크립트는 배열 선언한 인덱스값 범위를 벗어나도 에러가 나지 않는다.
	arr[10] = 90;
	alert(arr[10]);
	
	// 2. 자바스크립의 배열은 자료형이 없기 때문에, 하나의 배열에 여러 자료형이 들어갈 수 있다.
	arr[0] = 9;
	arr[1] = "hehe";
	arr[2] = 33.2;
	console.log(arr[0], arr[1], arr[2]);
	
	/* 배열을 만들 때 초기값을 주는 방법 */
	var man = ["홍길동", "배트맨", "슈퍼맨", "앤트맨", "스파이더맨"];
	
</script>
</head>
<body>	<!-- 0627js/array.jsp -->
	
</body>
</html>