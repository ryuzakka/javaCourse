<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>0614/form_ex2</title>
<script>
	function cal1() {
		var a = parseInt(document.dhr.a.value);
		var b = parseInt(document.dhr.b.value);
		var sum = 0;
		
		for(i=a; i<=b; i++) {
			sum += i;
		}
		
		document.dhr.result.value = sum;
	}
	function cal2() {
		var n = parseInt(document.dhr2.n.value);
		var sum = 0;
		
		for(i=1; i<=100; i++) {
			if(i%n == 0)
				sum += i;
		}
		
		document.dhr2.result.value = sum;
	}
	function cal3() {
		var rand1 = Math.floor(Math.random()*45) + 1;
		document.dhr3.result.value = rand1;
	}
</script>
</head>
<body>
	<!-- 1. a부터 b까지의 합 구하기 -->
	<form name="dhr">
		a: <input type="text" name="a" size="3">
		b: <input type="text" name="b" size="3">
		<input type="button" value="계산" onclick="cal1()">
		결과: <input type="text" name="result" size="5">
	</form>
	<p><hr><p>
	
	<!-- 2. 1~100까지의 n의 배수의 합 구하기 -->
	<form name="dhr2">
		n: <input type="text" name="n" size="3">
		<input type="button" value="계산" onclick="cal2()">
		결과: <input type="text" name="result" size="5">
	</form>
	<p><hr><p>
	
	<!-- 3. 1~45까지의 임의의 숫자를 구하여 전달하기 -->
	<form name="dhr3">
		<input type="button" value="계산" onclick="cal3()">
		결과: <input type="text" name="result" size="5">
	</form>
</body>
</html>