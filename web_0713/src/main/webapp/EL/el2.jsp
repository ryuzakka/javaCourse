<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>el 2</title>
</head>
<body>

<%
	// 내장객체 영역의 값을 쉽게 출력할 수 있게 사용하는 표현식 = EL (Expression Language)
	pageContext.setAttribute("name", "Antman");
	request.setAttribute("name", "Spiderman");
	session.setAttribute("name", "Ironman");
	application.setAttribute("name", "Thor");
%>

<!-- 출력 부분 -->
<%=pageContext.getAttribute("name") %> <p>
<%=request.getAttribute("name") %> <p>
<%=session.getAttribute("name") %> <p>
<%=application.getAttribute("name") %> <p>
<hr>

<!-- EL 표현식으로 처리 -->
${pageScope.name} <p>
${requestScope.name} <p>
${sessionScope.name} <p>
${applicationScope.name} <p>
<hr>

<!-- 일반적인 작업시에는 변수명만 처리 -->
${name}	<!-- 같은 이름이 존재할 때 우선순위 : pageContext > request > session > application -->


</body>
</html>
