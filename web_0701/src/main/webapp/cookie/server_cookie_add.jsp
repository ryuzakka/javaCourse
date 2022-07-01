<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 쿠키 클래스를 이용하여 객체 생성
	Cookie cookie = new Cookie("name", "홍길동");	// java.lang 에 포함된 클래스는 import 필요없음
	
	// 쿠키의 존재 시간
	cookie.setMaxAge(600);	// expiry = 초 단위
	
	// 클라이언트에 전달
	response.addCookie(cookie);
	
	cookie = new Cookie("age", "42");
	cookie.setMaxAge(600);
	response.addCookie(cookie);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>server cookie add</title>
</head>
<body>	<!-- 0701/server_cookie_add.jsp -->
	<!-- java에서 cookie객체를 생성 => 클라이언트에 전달 -->
	
	<a href="server_cookie_view.jsp">과자 보기</a>
	
</body>
</html>