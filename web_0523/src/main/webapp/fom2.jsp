<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<!-- form태그의 역할 -->
		<form method="post" action="a.jsp">	<!-- URL에 입력값이 포함되지 않음 : 헤더에 숨겨짐 -->
			<input type="text" name="name">
			<input type="submit" value="전송">
		</form>
		<hr>
		<form method="get" action="a.jsp">	<!-- URL에 입력값이 포함됨 -->
			<input type="text" name="name">
			<input type="submit" value="전송">
		</form>

		
	</body>
</html>