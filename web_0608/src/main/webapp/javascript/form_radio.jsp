<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>form : radio</title>
<script>
	function radio() {
		/* checked => true/false로 계산됨 */
		
		// 1. 강사님 강의내용
		var cnt = 0;
		for(i=0; i<4; i++) {
			if(document.dhr.pay[i].checked) {
				cnt++;
			}
		}
		if(cnt == 0) {
			alert("결제방법을 선택하세요.");
			return false;
		}
		else {
			return true;
		}
		
		// 2. 개인 실습
/* 
		var cnt = 0;
		for(i=0; i<4; i++) {
			if(document.dhr.pay[i].checked) {
				cnt++;
				return true;
			}
		}
		alert(cnt);
		return false;
*/
	}
	function checkbox() {
		var cnt = 0;
		
		for(i=0; i<4; i++) {
			if(document.dhr2.pay[i].checked)
				cnt++;
		}
		
		if(cnt == 0) {
			alert("선택해주세요.");
			return false;
		} else {
			return true;
		}
	}
</script>
</head>
<body>

	<!-- 폼태그에서 라디오 유효성검사 : 무조건 선택하여야 한다. -->
	<form method="post" action="a.jsp" name="dhr" onsubmit="return radio()">
		<span>결제방법 : </span>
		<input type="radio" name="pay">카드	<!-- checked => 일반적으로 true로 계산됨 -->
		<input type="radio" name="pay">현금
		<input type="radio" name="pay">계좌이체
		<input type="radio" name="pay">외상 <p>
		<input type="submit" value="선택">
	</form>
	
	<!-- 폼태그에서 체크박스 유효성검사 : 무조건 선택하여야 한다. -->
	<form name="dhr2" method="post" action="a.jsp" onsubmit="return checkbox()">
		<span>결제방법 : </span>
		<input type="checkbox" name="pay">카드
		<input type="checkbox" name="pay">현금
		<input type="checkbox" name="pay">계좌이체
		<input type="checkbox" name="pay">외상 <p>
		<input type="submit" value="선택">
	</form>
	
</body>
</html>