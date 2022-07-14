<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="arraylist.StudentDao" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	StudentDao sdao = new StudentDao();
	sdao.getStudent(request);	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>arraylist/list</title>
</head>
<body>
	
	<c:forEach items="${list}" var="sdto">
		${sdto.id}
		${sdto.age}
		${sdto.name}
		${sdto.phone} <p>
	</c:forEach>
	
</body>
</html>