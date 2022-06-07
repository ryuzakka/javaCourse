<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>form</title>
</head>
<body>
	<!-- 
		submit 버튼이 클릭되면 action에 있는 주소로 이동
		단, form태그 내에 있는 값만 전달한다.
	-->
	<form method="post" action="cal.jsp">
		국어점수<input type="text" name="kor"><p>
		영어점수<input type="text" name="eng"><p>
		수학점수<input type="text" name="mat"><p>
		<input type="submit" value="계산하기">
	</form>
	
</body>
</html>