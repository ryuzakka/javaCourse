<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>0620/this2</title>
<script>
	function check() {
		if(document.dhr.name.value == "") {
			alert("이름을 입력하세요.");
			document.dhr.name.focus();
			return false;
		}
		else if(document.dhr.age.value == "") {
			alert("나이를 입력하세요");
			document.dhr.age.focus();
			return false;
		}
		else {
			return true;
		}
	}
</script>
</head>
<body>	<!-- 0620/this2 -->
	
	<form name="dhr" method="post" action="a.jsp" onsubmit="return check()">
		<input type="text" name="name" placeholder="이름"> <p>
		<input type="text" name="age" placeholder="나이"> <p>
		<input type="submit" value="저장">
	</form>
	
	
</body>
</html>