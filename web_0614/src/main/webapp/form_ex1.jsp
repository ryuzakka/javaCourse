<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>0614/form_ex1</title>
<style>
	input:nth-child(5) {
		background:#eeeeee;
		color:red;
	}
	input:nth-child(6) {
		background:#eeeeee;
		color:red;
	}
</style>
<script>
function cal() {
	var kor = parseInt(document.dhr.kor.value);
	var eng = Number(document.dhr.eng.value);
	var mat = eval(document.dhr.mat.value);
	
	var tot = kor + eng + mat;
	var avg = tot / 3;
	
	document.dhr.tot.value = tot;
	document.dhr.avg.value = avg;
}
</script>
</head>
<body>
	<!-- 키보드로 입력한 폼태그의 내용을 가지고 처리 -->
	<!-- 폼태그의 값들을 가지고 연산 -->
	<form name="dhr">
		국어 : <input type="text" name="kor" size="4">
		영어 : <input type="text" name="eng" size="4">
		수학 : <input type="text" name="mat" size="4">
		<input type="button" value="calculate" onclick="cal()">
		총점 : <input type="text" name="tot" size="4">
		평균 : <input type="text" name="avg" size="4"> <p>
	</form>
</body>
</html>