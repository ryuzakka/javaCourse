<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>homework 0607</title>
</head>
<body>
	<!-- 
		1. 성적을 입력하여 A,B,C,D,F 출력하기
		2. 숫자n입력 1~100까지의 n의 배수의 합 출력하기
		3. (1:짜장면, 2:우동, 3:짬뽕, 4:탕수육, 5:팔보채) 숫자로 입력받은 후 1인 경우 짜장면을 시켰습니다.
	 -->
	
	
	<!-- 1. 성적을 입력하여 A,B,C,D,F 출력하기 -->
	<form method="post" action="score.jsp">
		<input type="text" name="score" placeholder="점수를 입력하세요."><p>
		<input type="submit" value="성적 확인"><p>
	</form>
	<hr>
	
	<!-- 2. 숫자n입력 1~100까지의 n의 배수의 합 출력하기 -->
	<form method="post" action="sum.jsp">
		<input type="text" name="num" placeholder="숫자 n을 입력하세요."><p>
		<input type="submit" value="n의 배수의 합 구하기"><p>
	</form>
	<hr>
	
	<!-- 3. (1:짜장면, 2:우동, 3:짬뽕, 4:탕수육, 5:팔보채) 숫자로 입력받은 후 1인 경우 짜장면을 시켰습니다. -->
	<form method="post" action="chinese.jsp">
		<span>1:짜장면  2:우동  3:짬뽕  4:탕수육  5:팔보채 </span><p>
		<input type="text" name="food" placeholder="원하는 음식을 입력하세요."><p>
		<input type="submit" value="주문하기"><p>
	</form>
	
</body>
</html>