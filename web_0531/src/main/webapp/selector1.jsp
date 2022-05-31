<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>selector1</title>
	<style>
		input[type=text] {
			width:300px;
			height:40px;
			padding-left:10px;
		}
		input[type=password] {
			width:300px;
			height:40px;
			padding-left:10px;
		}
		input[type=button] {
			width:310px;
			height:40px;
			background:white;
			border:1px solid green;
			color:green;
		}
		input[type=button]:hover {
			width:310px;
			height:40px;
			background:olive;
			border:1px solid green;
			color:white;
		}
		input[type=submit] {
			width:310px;
			height:40px;
			background:white;
			border:1px solid green;
			color:olive;
		}
		input[type=submit]:hover {
			width:310px;
			height:40px;
			background:olive;
			border:1px solid green;
			color:white;
		}
		input[type=reset] {
			width:150px;
			height:40px;
			background:white;
			border:1px solid red;
			color:red;
		}
		input[type=reset]:hover {
			width:150px;
			height:40px;
			background:red;
			border:1px solid red;
			color:white;
		}
	</style>
</head>
<body>
	<!-- 선택자(selector) : 태그, id, class -->
	
	<!-- 속성선택자 : 태그 내에 속성을 가진다. => 속성을 이용하여 style을 적용 -->
	<form>
		<input type="text" placeholder="ID"><p>
		<input type="password" placeholder="PW"><p>
		<input type="button" value="선택"><p>
		<input type="submit" value="전송"><p>
		<input type="reset" value="취소"><p>
		<input type="text">
	</form>
</body>
</html>