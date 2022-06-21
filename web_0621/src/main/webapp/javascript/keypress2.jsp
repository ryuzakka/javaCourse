<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>0621js/keypress2</title>
<script>
	function check() {
		// '0':48 , '9':57
		if(event.keyCode >= 48 && event.keyCode <= 57) {
			return true;
		}
		else {
			return false;
		}
	}
	
	function check1(my) {
		my.value = my.value.replace(/[^0-9]/g, "");	// 0~9를 제외하고 ""로 교체
	}
	function check2(my) {
		my.value = my.value.replace(/[0-9]/g, "");	// 0~9만 ""로 교체
	}
	function check3(my) {
		my.value = my.value.replace(/[^a-zA-Z]/g, "");	// a~z, A~Z를 제외하고 ""로 교체
	}
	function check4(my) {
		my.value = my.value.replace(/[a-zA-Z0-9]/g, "");	// a~z, A~Z, 0~9는 ""로 교체
	}
</script>
</head>
<body>	<!-- 0621js/keypress2 -->
	<!-- 숫자만 입력(영문X, 한글O) -->
	숫자만 입력(영문X, 한글O) : <input type="text" onkeypress="return check()" placeholder="return keypress로 처리" size="50"> <p>

	<!-- 정규표현식을 이용한 입력 -->
	<!-- 숫자만 입력하기 -->
	완전 숫자만 : <input type="text" onkeyup="check1(this)" placeholder="정규표현식 /[^0-9]/g 로 처리" size="50"> <p>
	<!-- 문자만 입력하기 -->
	문자만 : <input type="text" onkeyup="check2(this)" placeholder="정규표현식 /[0-9]/g 로 처리" size="50"> <p>
	<!-- 영문만 입력하기 -->
	영문만 : <input type="text" onkeyup="check3(this)" placeholder="정규표현식 /[^a-zA-Z]/g 로 처리" size="50"> <p>
	<!-- 한글만 입력하기 -->
	한글만 : <input type="text" onkeyup="check4(this)" placeholder="정규표현식 /[a-zA-Z0-9]/g 으로 처리" size="50"> <p>
	
</body>
</html>