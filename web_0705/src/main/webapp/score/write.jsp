<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>write</title>
</head>
<body>
	
	<form method="post" action="write_ok.jsp">
		<caption>
			<h2>학생 정보입력</h2>
		</caption>
		<input type="text" name="name" placeholder="이름" required><p>
		<input type="text" name="kor" placeholder="국어점수" required><p>
		<input type="text" name="eng" placeholder="영어점수" required><p>
		<input type="text" name="mat" placeholder="수학점수" required><p>
		<input type="submit" value="입력하기">
	</form>
	
</body>
</html>