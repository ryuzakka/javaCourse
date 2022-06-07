<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cal2</title>
</head>
<body>
	<!-- a에서 b까지의 합을 구하여 출력하기 -->
	
	<%
	int a = Integer.parseInt(request.getParameter("a"));
	int b = Integer.parseInt(request.getParameter("b"));
	int temp;
	int sum = 0;
	
	if(a > b){
		temp = a;
		a = b;
		b = temp;
	}
	
	for(int i=a; i<=b; i++) {
		sum += i;
	}
	
	out.print("a부터 b까지의 합 : " + sum);
	out.print("<p>");
	%>
	
	<form method="post" action="form2.jsp">
		<input type="submit" value="뒤로가기"><p>
	</form>
	
</body>
</html>