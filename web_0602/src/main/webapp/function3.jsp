<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>function3</title>
	<script>
		// 1에서 100까지의 합을 구하는 함수
		function sum100() {
			var tot = 0;
			for(i=1; i<101; i++) {
				tot += i;
			}
			alert(tot);
		}
		
		// 1부터 n까지의 합을 구해서 alert로 출력
		function sumN(n) {
			var tot = 0;
			for(i=1; i<=n; i++) {
				tot += i;
			}
			alert(tot);
		}
		// a부터 b까지의 합을 구해서 alert로 출력
		function sumAB(a, b) {
			var sum = 0;
			for(i=a; i<=b; i++) {
				sum = sum + i;
			}
			alert(sum);
		}
		function sum() {
			var tot = 0;
			var a = parseInt(document.getElementById('a').value);
			var b = parseInt(document.getElementById('b').value);
			for(i=a; i<=b; i++) {
				tot = tot + i;
			}
			alert(tot);
		}
	</script>
<body>
	<!-- 자바스크립트 함수에서 필요한 값이 있을 경우 함수 호출시 값을 전달할 수 있다. -->
	<input type="button" value="1부터 100까지의 합" onclick="sum100()"><p>
	<input type="button" value="1부터 n까지의 합" onclick="sumN(3)"><p>	
	<input type="button" value="a부터 b까지의 합" onclick="sumAB(3,5)"><p>
	
		
	<input type="text" id="a" placeholder="a">
	<input type="text" id="b" placeholder="b">
	<input type="button" value="a부터 b까지의 합" onclick="sum()"><p>
</body>
</html>