<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>0621js/change</title>
<script>
	function check(my) {
		alert(my.value);
	}
	
	function change(my) {
		if(my.selectedIndex != 0) {
			document.getElementById("aa").innerText = my.value;			
		}
	}
	
	function move(my) {
		if(my.selectedIndex != 0) {
			// location = my.value;		// 현재 창에서 이동
			open(my.value);
		}
	}
</script>
</head>
<body>	<!-- 0621js/change -->
	<!-- change이벤트 : 값이 변경되었을 때 -->
	<input type="text" onchange="check()" value="abcd"> <p>
	
	<!-- change이벤트는 select태그에서 주로 사용함 -->
	<select onchange="check(this)">
		<option> 1,000 원 </option>
		<option> 2,000 원 </option>
		<option> 3,000 원 </option>
		<option> 4,000 원 </option>
	</select>
	
	<form name="dhr">
		<select onchange="change(this)">
			<option> 선 택 </option>
			<option value="5,000"> 짜 장 </option>
			<option value="6,000"> 짬 뽕 </option>
			<option value="6,000"> 볶음밥 </option>
			<option value="12,000"> 탕수육 </option>
		</select> <p>
		가격 : <span id="aa"></span> 원 입니다.
	</form>
	
	<form name="ryu">
		<select onchange="move(this)">
			<option> 패밀리 사이트 </option>
			<option value="https://naver.com"> 네이버 </option>
			<option value="https://daum.net"> 다 음 </option>
			<option value="http://www.kbs.co.kr"> KBS </option>
			<option value="http://imbc.com"> MBC </option>
		</select>
	</form>
	
</body>
</html>