<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Hello World!</title>
	</head>
	<body>
		<!--
			1. 줄바꿈 태그
			2. 글자 관련 태그
			3. 그림 태그
			4. 목록 태그
			5. a 태그
			6. form 태그 => 입력양식 
			7. table 태그
		 -->
		 
		<!-- 줄바꿈 태그 -->
		안녕하세요.<p> 오늘은 <br> 목요일 입니다.
		
		<hr>
		p태그를 반복한다면 <p>	<!-- p태그는 여러개 있어도 1개만 동작 -->
		오늘은 <p><p><p><p>목요일 입니다.
		
		<hr>
		br태그를 반복한다면 <p>	<!-- br태그는 여러개가 동작됨 -->
		오늘은 <br><br><br>목요일 입니다.<p>
		
		<!-- 글자 관련 태그 -->
		<!-- font태그 -->
		<font size="7" color="pink" face="맑은고딕">안녕하세요</font><p>
		<font size="5" color="green" face="고딕">하하하</font>
		
		<hr>
		<!-- b, i, s, u 등등 -->
		안녕하세요. <b>반갑습니다.</b> <strong>감사합니다.</strong><br>
		안녕하세요. <i>반갑습니다.</i> <em>감사합니다.</em><br>
		안녕하세요. <s>반갑습니다.</s> <strike>감사합니다.</strike><br>
		안녕하세요. <u>반갑습니다.</u> 감사합니다. <p>
		
		<hr>
		<!-- 위첨자, 아래첨자 -->
		H<sub>2</sub>O<br>
		2<sup>n</sup>
		
		<hr>
		<!-- head : h1 ~ h6 -->
		<h1>아자!!</h1>
		<h2>아자!!</h2>
		<h3>아자!!</h3>
		<h4>아자!!</h4>
		<h5>아자!!</h5>
		<h6>아자!!</h6>
		
		<hr>
		<!-- block태그와 in-line태그 -->
		
	</body>
</html>