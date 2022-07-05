<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>for_ex</title>
<script>
	var arr = ["홍길동","앤트맨","스파이더맨","아이언맨", "데드풀"];
	
	// 위의 배열의 이름을 하나씩 읽어와서 하나의 문자열에 결합
	function for1() {
		var str = "";
		
		for(i=0; i<arr.length; i++) {
			str += arr[i] + " ";
		}
		console.log(str);
	}
	
	// 새로운 형태의 for문
	function for2() {
		var str = "";
		for(i in arr) {
			str += arr[i] + " ";
		}
		console.log(str);
	}
	
	function for3() {
		var str = "";
		for(i of arr) {
			str += i + " ";	// i 가 value
		}
		console.log(str);
	}
	
</script>
</head>
<body>	<!-- 0705/for_ex -->
	
	<!-- for의 다른 형태 -->
	<input type="button" onclick="for1()" value="1"> <p>
	<input type="button" onclick="for2()" value="2"> <p>
	<input type="button" onclick="for3()" value="3"> <p>
	
</body>
</html>