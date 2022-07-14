<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="arraylist.StudentDao_old" %>
<%@ page import="arraylist.StudentDto" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	StudentDao_old sdao = new StudentDao_old();
	ArrayList<StudentDto> list = new ArrayList<StudentDto>();
	
	list = sdao.getStudent();
	
	request.setAttribute("list", list);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>arraylist/list</title>
</head>
<body>

<%-- <% for(int i=0; i<list.size(); i++) { %>
	<%=list.get(i).getId() %>
	<%=list.get(i).getAge() %>
	<%=list.get(i).getName()%>
	<%=list.get(i).getPhone() %> <p>
<% } %> --%>

<%-- 	<c:forEach var="i" begin="0" end="${list.size()-1}">
		<option> ${list.get(i).getId()} </option>
		<option> ${list.get(i).getAge()} </option>
		<option> ${list.get(i).getName()} </option>
		<option> ${list.get(i).getPhone()} </option>
		<p>
	</c:forEach> --%>
	
	<c:forEach items="${list}" var="sdto">
		${sdto.id}
		${sdto.age}
		${sdto.name}
		${sdto.phone} <p>
	</c:forEach>
	
</body>
</html>