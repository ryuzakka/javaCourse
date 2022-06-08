<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>form input OK2</title>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");
	
	// checkbox는 값이 선택되지 않을 경우 hobby.length는 null 이다.
	/* 
	 * null에 대한 처리방법
	 * checkbox에 체크된 항목이 없는 경우 => 분기처리
	 * 체크된 항목을 배열로 받고, 반복문으로 String 변수에 한번에 담에서 출력한다. 
	 */ 

	String hob = "";
	
	if(request.getParameterValues("hobby") != null) {
		String[] hobby = request.getParameterValues("hobby");
		for(int i=0; i<hobby.length; i++) {
			if(i != hobby.length-1)
				hob = hob + hobby[i]+", ";
			else
				hob = hob + hobby[i];
		}
	}
	
	out.print(hob);
	%>
	<p>
	<a href="form_input2.jsp">Go back</a><p>
</body>
</html>