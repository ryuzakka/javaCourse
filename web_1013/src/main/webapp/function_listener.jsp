<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script>
	window.onload = function() {
		// 특정요소.addEventListener("이벤트", 동작);
		var aa = document.getElementById("aa");
		var bb = document.getElementById("bb");
		var cc = document.getElementById("cc");
		
		aa.addEventListener("click", func1);
		bb.addEventListener("click", function(){
			alert("2");
		});
		cc.addEventListener("click", func1,{
			once:true	// 1회만 실행
		})
		
		// 이벤트 제거
		var del = document.getElementById("del");
		del.onclick = function(){
			aa.removeEventListener("click", func1);
		}
	}
	function func1() {
		alert("1");
	}
</script>

</head>
<body>
	
	<!-- body에 있는 여러 요소에서 이벤트를 통해 자바스크립트 함수를 호출 
		<> 함수를 선언시에 특정요소, 이벤트, 동작을 정의하는 방식
		태그요소에는 자바스크립트에 접근할 수 있는 이름을 부여한다.
	-->
	<input type="button" value="id='aa'의 기능 삭제" id="del" />
	<div id="aa"> Click Here! </div> <p>
	<span id="bb"> Click Me! </span> <p>
	<input type="button" value="click me" id="cc" />
	
</body>
</html>