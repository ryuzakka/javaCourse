<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>0614/form_ex3</title>
<script>
	function cal(n) {
		/* alert(document.dhr.kor[0].value); */
		let kor = Number(document.dhr.kor[n].value);
		let eng = Number(document.dhr.eng[n].value);
		let mat = Number(document.dhr.mat[n].value);
		let sci = Number(document.dhr.sci[n].value);
		
		let sum = kor + eng + mat + sci;
		
		document.dhr.result[n].value = sum;
	
	}
</script>
</head>
<body>
	<form name="dhr">
		<table width="500" align="center">
			<tr>
				<td> 이름 </td>
				<td> 국어 </td>
				<td> 영어 </td>
				<td> 수학 </td>
				<td> 과학 </td>
				<td> 클릭 </td>
				<td> 총점 </td>
			</tr>
			<tr>
				<td> 홍길동 </td>
				<td> <input type="text" name="kor" size="3"> </td>
				<td> <input type="text" name="eng" size="3"> </td>
				<td> <input type="text" name="mat" size="3"> </td>
				<td> <input type="text" name="sci" size="3"> </td>
				<td> <input type="button" value="계산" onclick="cal(0)"> </td>
				<td> <input type="text" name="result" size="3"> </td>
			</tr>
			<tr>
				<td> 가길동 </td>
				<td> <input type="text" name="kor" size="3"> </td>
				<td> <input type="text" name="eng" size="3"> </td>
				<td> <input type="text" name="mat" size="3"> </td>
				<td> <input type="text" name="sci" size="3"> </td>
				<td> <input type="button" value="계산" onclick="cal(1)"> </td>
				<td> <input type="text" name="result" size="3"> </td>
			</tr>
			<tr>
				<td> 히길동 </td>
				<td> <input type="text" name="kor" size="3"> </td>
				<td> <input type="text" name="eng" size="3"> </td>
				<td> <input type="text" name="mat" size="3"> </td>
				<td> <input type="text" name="sci" size="3"> </td>
				<td> <input type="button" value="계산" onclick="cal(2)"> </td>
				<td> <input type="text" name="result" size="3"> </td>
			</tr>
		</table>
	</form>
</body>
</html>