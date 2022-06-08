<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>form1</title>
<script>
	function check() {
		alert("function call");
		// button으로 함수호출 후 유효성 검사를 끝낸 후 이상이 없다면
		document.dhr.submit();	// 자바스크립트에 있는 전송 메소드
	}
	function check2() {
		alert("function call 2");
		return false;	// return이 없으면 true로 간주함
	}
</script>
</head>
<body>	<!-- 5교시 : 자바스크립트 -->
	<!-- form태그의 값을 서버에 전송하는 방법(어떤 버튼을 사용하는가) -->
	<!-- 일반적으로 form태그에 입력된 값의 유효성 검사를 자바스크립트를 통해 이루어짐 -->
	
	<form name="dhr" method="post" action="a.jsp">
		<input type="text" name="name" placeholder="이름"> <p>
		<input type="password" name="pwd" placeholder="비밀번호"> <p>
		<textarea cols="40" rows="5" name="introduce" placeholder="소개"></textarea> <p>
		
		<!-- button은 서버에 전송을 하지 못함 -->
		<input type="button" onclick="check()" value="check"> <p>
	</form>

	<hr>
											<!-- on이벤트 = "return 함수()" => 해당 함수의 리턴값이 true이면 이벤트가 동작함
																						false면 동작하지 않음 -->
	<form name="dhr2" method="post" action="b.jsp" onsubmit="return check2()">
		<input type="text" name="name" placeholder="이름"> <p>
		<input type="password" name="pwd" placeholder="비밀번호"> <p>
		<textarea cols="40" rows="5" name="introduce" placeholder="소개"></textarea> <p>
		
		<!-- submit은 무조건 action에 있는 문서로 이동함 => 현재 상태로는 유효성검사가 불가능 -->
		<input type="submit" value="check"> <p>
	</form>

</body>
</html>