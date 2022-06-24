<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	if(session.getAttribute("userid") != null) {
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>member</title>
</head>
<body>
	
	<!-- session에 userid라는 변수에 값이 존재해야 접근 가능 -->
	<span>여기는 회원만 볼 수 있는 문서입니다.</span>
	
</body>
</html>
<%
	}
	else {
		response.sendRedirect("login.jsp");
	}
%>