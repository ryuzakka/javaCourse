<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>form_text</title>
<script>
	function check() {
		// 여기서 유효성 검사를 실시
		// 1. 이름은 값이 무조건 들어와야 한다. => 이름은 길이가 1자 이상
		// 이름form태그의 값 읽어오기 => 폼의 접근은 DOM으로 해도 되고, 폼객체로 접근할 수도 있다.
		// 폼객체 : document.폼이름.입력폼이름.value => document.dhr.name.value
		// DOM : document.getElementsByName('name')[0].value

		var pwd = document.dhr.pwd.value.trim();
		
		if(document.getElementsByName('name')[0].value.trim() == "") {
			alert("이름을 입력하세요.");
			document.dhr.name.focus();
			return false;
		}
		else if(document.dhr.pwd.value.trim() == "") {
			alert("비밀번호 입력하세요.");
			document.dhr.pwd.focus();
			return false;
		}
		else if(pwd.length < 8) {
			alert("비밀번호가 너무 짧습니다.");
			document.dhr.pwd.focus();
			return false;
		}
		else if(document.getElementsByName('introduce')[0].value.trim() == ""){
			alert("소개도 적으셔야죠.");
			document.dhr.introduce.focus();
			return false;
		}
		else {
			return true;
		}
	}
</script>
</head>
<body>
	<!-- form태그에 키보드로 입력한 form태그의 유효성 검사하기 -->
	
	<form name="dhr" method="post" action="a.jsp" onsubmit="return check()">
		<input type="text" name="name" placeholder="이름" > <p>
		<input type="password" name="pwd" placeholder="비밀번호" > <p>
		<textarea rows="5" cols="40" name="introduce" placeholder="소개" ></textarea> <p>
		<input type="submit" value="전송">
	</form>

</body>
</html>