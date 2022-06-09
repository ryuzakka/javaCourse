<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>INSERT : sungjuk</title>
</head>
<body>
	<form name="input" method="post" action="insert_ok.jsp">
		<h2>학생 추가</h2>
		<input type="text" name="hakbun" placeholder="학번" required> <p>
		<input type="text" name="name" placeholder="이름"> <p>
		<input type="text" name="kor" placeholder="수학점수"> <p>
		<input type="text" name="eng" placeholder="영어점수"> <p>
		<input type="text" name="mat" placeholder="수학점수"> <p>
		<input type="submit" value="추가하기">
	</form>
	<a href="select.jsp">뒤로가기</a>
</body>
</html>