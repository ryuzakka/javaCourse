<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>window</title>
<script>
	// prompt();	// 간단한 텍스트 입력창
	
	// confirm();	// 두 개의 버튼으로 결정을 요함. 확인(true), 취소(false);
	
/*
	let chk = confirm("확실합니까?");
	if(chk) {
		location = "http://naver.com";
	}
	else {
		location = "http://daum.net";
	}
*/

	function form_del() {
		var chk = confirm("reset?");
		if(chk) {
			//document.dhr.name.value = "";
			//document.dhr.age.value = "";
			return true;
		}
		else
			return false;
	}
</script>
</head>
<body>	<!-- 0629/window.jsp -->
	
	<form name="dhr" onreset="return form_del()">
		이름 <input type="text" name="name"> <p>
		나이 <input type="text" name="age"> <p>
		<input type="submit" value="전송">
		<input type="reset" value="초기화">
	</form>
	
</body>
</html>