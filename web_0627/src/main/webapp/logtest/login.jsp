<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<style>
	body {
		margin-top:70px;
	}
	form {
		text-align:center;
	}
	input {
		width:300px;
		height:40px;
		border:1px solid purple;
	}
	input[type=submit] {
		width:306px;
		background:#d38aff;
		color:white;
		border:1px solid white;
	}
	input[type=submit]:hover {
		width:306px;
		background:purple;
		color:white;
	}
</style>
</head>
<body>
	
	<div align="center">
		<h2>로 그 인</h2>
		<form method="post" action="login_ok.jsp">
			<input type="text" name="userid" placeholder="아이디" required> <p>
			<input type="password" name="userpwd" placeholder="비밀번호" required> <p>
			<input type="submit" value="로그인하기"> <p>
			<a href="main.jsp">메인으로</a>
		</form>
	</div>
	
</body>
</html>