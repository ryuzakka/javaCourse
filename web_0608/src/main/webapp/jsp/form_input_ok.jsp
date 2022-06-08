<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>form input OK</title>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	String pwd = request.getParameter("pwd");
	String soge = request.getParameter("soge");
	
	out.print(name + "<p>" + pwd + "<p>" + soge);
	out.print("<p>");
	
	// 마우스로 선택하는 값 받기
	String sung = request.getParameter("sung");
	String[] hobby = request.getParameterValues("hobby");	// checkbox는 선택값이 복수이므로 처리방법이 다르다.
	String area = request.getParameter("area");
	
	out.print(sung + "<p>");
	for(int i=0; i<hobby.length; i++) {
		out.print(hobby[i] + " ");
	}
	out.print("<p>" + area);
	
	%>
	<p>
	<a href="form_input.jsp">Go back</a><p>
</body>
</html>