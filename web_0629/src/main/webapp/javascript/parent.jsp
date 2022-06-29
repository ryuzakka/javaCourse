<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>parent</title>
<script>
	let son1;
	function winopen() {
		// open(1.새창에 보여줄 문서(or URL), 2.타겟이름, 3.창의 옵션)
		son1 = open("son.jsp", "Mr.Son", "left=200, top=200, width=500,height=600");
	}
	function bluecolor() {
		son1.document.getElementById("aa").style.color = "red";
	}
	function sonfunc() {
		son1.focus();
		son1.test();
	}
</script>
</head>
<body>	<!-- 0629/parent.jsp -->
	
	<span id="aa"> Opener </span> <p>
	<b onclick="winopen()"> 창 열기 </b>
	<hr>
	
	<!-- 아래를 클릭하면 자식창의 '자식 창' 글자의 색을 파랑색으로 교체 -->
	
	<b onclick="bluecolor()"> 자식창 글자색 변경 </b>
	<hr><p>
	
	<b onclick="sonfunc()"> 자식창 함수 호출 </b>
	<hr><p>
	
</body>
</html>