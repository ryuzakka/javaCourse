<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>margin & padding</title>
<link rel="stylesheet" type="text/css" href="style.css">
<style>
	body{
		font-family:'Goyang';
		font-size:20px;
	}
	div {
		width:600px;
		height:140px;
		border:solid 2px darkorange;
		margin:10px 0px 30px 0px;
	}
	div div {
		display:inline-block;
		border:solid 2px pink;
		background:pink;
		width:100px;
		height:20px;
		margin:10px 20px;
		padding:30px;
	}
	#aa {
		padding-left:56px;
		padding-bottom:50px;
		color:white;
	}
</style>
</head>
<body>
	<!-- 
		margin : 요소와 요소의 거리
		padding : 자기요소의 내용과 외곽선의 거리
	 -->
	 margin & padding <p>
	 <div>
		 <div>Lorem ipsum</div>
		 <div>Lorem ipsum</div>
	 </div>
	 <div>
		 <div>Lorem ipsum</div>
		 <div id="aa">Lorem ipsum</div>
	 </div>
</body>
</html>