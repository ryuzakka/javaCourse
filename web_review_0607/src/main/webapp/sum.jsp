<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>2. n의 배수의 합</title>
</head>
<body>
	<%
	int num = Integer.parseInt(request.getParameter("num"));
	int sum = 0;
	
	for(int i=1; i<101; i++) {
		if(i%num == 0) {
			sum += i;
		}
	}
	
	out.print(num + "의 배수의 합 : " + sum);
	%>
</body>
</html>