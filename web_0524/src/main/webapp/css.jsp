<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>CSS 1</title>
		<link rel="preconnect" href="https://fonts.gstatic.com" />
		<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet"/>
		<style>	/* head태그 사이에 정의 */
				/* 태그 {속성명:속성값; 속성명:속성값; ..} */
			@font-face {
				font-family:"Noto Sans KR";
				font-style:normal;
				font-weight:400;
				font-display:swap;
				src: url(https://fonts.gstatic.com/s/notosanskr/v13/PbykFmXiEBPT4ITbgNA5Cgm203Tq4JJWq209pU0DPdWuqxJFA4GNDCBYtw.0.woff2)
					format("woff2");
			}
			body {font-family:"Noto Sans KR", sans-serif;}
			b {color:hotpink; font-size:4em;}
		</style>
	</head>
	<body>
	<!-- 
		css : html태그는 단순한 기능 + 다양한 기능을 추가
		css의 기능은 브라우저에 포함되어 있다.
		
		< css의 사용방법 >
			1. HTML 문서 내 <style>태그로 정의 가능
			2. 태그내에 직접 사용 가능
			3. 외부 파일에 저장
	 -->
		 <b>Hi</b> Hello.<p>
		 <font size="7">hahaha</font><p>
		 
	</body>
</html>