<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>el 4</title>
</head>
<body>
	
	<!-- DTO클래스에 있는 내용을 EL표현식을 이용하여 출력하기 -->
	<%@ page import="el.Student" %>
	<%
		// Student클래스를 생성하여 EL로 출력
		Student student = new Student();
		
		student.setName("Harry");
		student.setAge(11);
		student.setPhone("010-1234-1234");
		
		request.setAttribute("student", student);
	%>

	<!-- EL표현식을 통해 출력 -->
	<table width="300" align="center" border="1">
		<tr>
			<td> 이름 </td>
			<td> 나이 </td>
			<td> 연락처 </td>
		</tr>
		<tr>
			<td> ${student.name} </td>
			<td> ${student.age} </td>
			<td> ${student.phone} </td>
		</tr>
	</table>
	
</body>
</html>