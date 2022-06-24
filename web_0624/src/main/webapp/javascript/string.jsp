<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>0624js/string</title>
<style>
	body {
		padding:40px;
	}
</style>
<script>
	function cutter() {		// 슨생님 의도
		var numb = document.dhr.phone.value;
		var wholeNum = numb.split("-");
		
		document.dhr.p1.value = wholeNum[0];
		document.dhr.p2.value = wholeNum[1];
		document.dhr.p3.value = wholeNum[2];		
	}
	function cutter2() {	// 나의 해결
		var numb = document.dhr.phone.value;
		
		if(numb.length == 11) {
			document.getElementsByTagName("span")[0].innerText = "";
			document.dhr.p1.value = numb.substring(0,3);
			document.dhr.p2.value = numb.substring(3,7);
			document.dhr.p3.value = numb.substring(7,11);			
		}
		else {
			document.dhr.p1.value = "";
			document.dhr.p2.value = "";
			document.dhr.p3.value = "";
			document.getElementsByTagName("span")[0].innerText = "11자리의 숫자를 입력하세요.";
		}
	}
</script>
</head>
<body>	<!-- 0624js/string.jsp -->
	
	<!-- 전화번호를 입력하면 앞자리, 중간, 뒷자리를 잘라서 밑에 있는 폼에 넣기 -->
	<form name="dhr">
		<input type="text" name="phone" placeholder="전화번호">
		<input type="button" onclick="cutter()" value="클릭"><p>
		<span style="color:red"></span><p>
		<input type="text" name="p1" size="3">-
		<input type="text" name="p2" size="3">-
		<input type="text" name="p3" size="3">
	</form>
	
</body>
</html>