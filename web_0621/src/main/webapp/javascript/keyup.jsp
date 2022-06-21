<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>0621js/keyup</title>
<script>
	function cardNum(my) {
		/*
			1. card1인 이름을 가진 태그 내의 값을 가져온다.
			2. 길이를 구한다.
			3. 길이가 4가 되면 다음 입력항목으로 이동
		*/
		
		my.value = my.value.replace(/[^0-9]/g, "");
		
		if(my.value.length == 4) {
			document.dhr.card2.focus();
		}
	}
</script>
</head>
<body>	<!-- 0621js/keyup -->
	<!-- 일정 길이가 들어오면 다음 폼태그로 이동 -->
	
	<form name="dhr" method="post" action="aa.jsp">
		<input type="text" name="card1" size="3" maxlength="4" onkeyup="cardNum(this)"> -
		<input type="text" name="card2" size="3" maxlength="4" onkeyup="cardNum(this)"> -
		<input type="text" name="card3" size="3" maxlength="4" onkeyup="cardNum(this)"> -
		<input type="text" name="card4" size="3" maxlength="4" onkeyup="">	
	</form>

</body>
</html>
