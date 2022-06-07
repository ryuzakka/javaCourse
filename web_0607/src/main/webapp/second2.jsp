<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>second2</title>
</head>
<body>
	second2 <p>
	<!-- 이전 문서에서 넘어오는 값을 받기 -->
	<%
		// request객체로 받는다.
		// 한글이 포함된 데이터가 존재한다면
		// request.getParameter 이전에 
		// request.setCharacterEncoding("utf-8") 를 설정한다.
		// 단, 위치는 request객체를 처음 사용할 때 
		request.setCharacterEncoding("utf-8");
		String num = request.getParameter("num");
		String name = request.getParameter("name");
		out.print("넘어온 값 : " + num + ", " + name);
	%>
	
</body>
</html>