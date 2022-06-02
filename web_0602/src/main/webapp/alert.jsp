<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>alert</title>
	<script>
		/* alert(); => 괄호안의 내용을 경고창에 나타내기 */
		// 프로그램 중에 발생되는 여러 값들을 경고창을 출력시 사용
		let kor = 90;
		let eng = 80;
		let tot = kor + eng;
		alert(tot);
		
		// document.write() => 프로그램 중에 발생되는 여러 값들을 브라우저 내에 출력 
		document.write("total : "+tot);
		
		// innerText, innerHTML => body태그내의 각 요소들(태그)내에 값을 전달
		
		// console.log() => 프로그램 중에 발생되는 값들을 콘솔창에서 확인
		console.log("total : "+tot);

	</script>
</head>
<body>
	<div id="aa">a</div><p>
	<div id="bb">b</div><p>
	
	<script>
		// innerText, innerHTML
		document.getElementById("aa").innerText = "<u>즐거운 하루</u>";
		document.getElementById("bb").innerHTML = "<u>목요일이네요</u>";
	</script>	
</body>
</html>