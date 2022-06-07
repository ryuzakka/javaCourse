<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<% // @가 붙으면 지시어를 사용 : page, include, import %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>start</title>
</head>
<body>
	
	<!-- 웹 문서 내에 자바코드를 넣는 법 -->
	<%	// 스크립트릿 내에 자바코드를 선언한다.
		int num = test();
		out.print(num);	// jsp내장객체는 jsp내에서 자동 생성
	%>
	<%
		Date today = new Date();
		int date = today.getDay();
		out.print(date);
	%>
	<%!	// 메소드는 '!' 느낌표 붙이고 사용 => but, 거의 사용X
		public int test() {
			return 111;
		}
	%>
	
</body>
</html>