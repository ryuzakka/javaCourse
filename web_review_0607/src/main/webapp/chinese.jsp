<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>3. 중국집</title>
</head>
<body>
	<%
	int food = Integer.parseInt(request.getParameter("food"));
	
	switch(food) {
		case 1: out.print("짜장면을 시켰습니다."); break;
		case 2: out.print("우동을 시켰습니다."); break;
		case 3: out.print("짬뽕을 시켰습니다."); break;
		case 4: out.print("탕수육을 시켰습니다."); break;
		case 5: out.print("팔보채를 시켰습니다."); break;
		default: out.print("잘못 누르셨습니다.");
	}
	%>
</body>
</html>