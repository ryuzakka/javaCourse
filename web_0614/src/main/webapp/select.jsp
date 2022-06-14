<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>0614/select</title>
<script>
	function check() {
		// select태그가 선택이 안됐을 경우, 경고창 전송X
		
		if(document.dhr.anju.value == 0){
			alert("선택하세요.");
			return false;
		}
		else {
			return true;
		}
		//alert(document.dhr.anju.selecetedIndex);	// selectedIndex => option태그 중에 선택된 option의 인덱스
		if(document.dhr.anju.selecetedIndex == 0){
			alert("선택하세요.");
			return false;
		}
		else {
			return true;
		}
		
		
	}
</script>
</head>
<body>
	<form name="dhr" method="post" action="" onsubmit="return check()">
		You may like
		<select name="anju">	<!-- name은 select태그에 작성한다. -->
			<option value="0"> 선 택 </option>	<!-- 서버로 전송시 value가 없으면 text가 전송된다. -->
			<option value="1"> 탕수육 </option>
			<option value="2"> 껍데기 </option>
			<option value="3"> 짬 뽕 </option>
			<option value="4"> 치 킨 </option>
			<option value="5"> 오징어회 </option>
			<option value="6"> 육 회 </option>
		</select> <p>
		<input type="submit" value="submit">
	</form>
</body>
</html>