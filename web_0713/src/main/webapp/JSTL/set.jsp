<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl/set</title>
</head>
<body>
	
	<%
	request.setAttribute("name", "배트맨");
	String juso = "서울시 양천구";
	String phone = "010-1234-1234";
	request.setAttribute("juso", juso);
	%>
	
	<c:set var="phone" value="<%=phone%>" />
	
	${name} : ${juso} : ${phone} <p>
	<hr>
	
	pageContext : ${pageScope.juso} <br>
	request : ${requestScope.juso} <br>
	session : ${sessionScope.juso} <br>
	application : ${applicationScope.juso} <p>

	pageContext : ${pageScope.phone} <br>
	request : ${requestScope.phone} <br>
	session : ${sessionScope.phone} <br>
	application : ${applicationScope.phone} <p>
	
</body>
</html>