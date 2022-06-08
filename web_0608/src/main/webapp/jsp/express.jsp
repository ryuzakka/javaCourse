<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>express</title>
</head>
<body>
	
	<%
	// 이름, 전화번호, 주소, 나이 => 표(table)로 출력
	String name = "홍길동";
	String phone = "010-1234-5678";
	String juso = "경기도";
	int age = 33;
	String name2 = "콩길동";
	String phone2 = "010-5678-1234";
	String juso2 = "경기도";
	int age2 = 34;
	
	out.print("<table width='400' border='1'>");
	out.print("<tr>");
	out.print("<td>이름</td>");
	out.print("<td>연락처</td>");
	out.print("<td>거주지</td>");
	out.print("<td>나이</td>");
	out.print("</tr>");
	out.print("<tr>");
	out.print("<td>" + name + "</td>");
	out.print("<td>" + phone + "</td>");
	out.print("<td>" + juso + "</td>");
	out.print("<td>" + age + "</td>");
	out.print("</tr>");
	out.print("<tr>");
	out.print("<td>" + name2 + "</td>");
	out.print("<td>" + phone2 + "</td>");
	out.print("<td>" + juso2 + "</td>");
	out.print("<td>" + age2 + "</td>");
	out.print("</tr>");
	out.print("</table>");
	%>
	<p>
	<hr>
	<p>
	
	<table width="400" border="1">
		<tr>
			<td>이름</td>
			<td>연락처</td>
			<td>거주지</td>
			<td>나이</td>
		</tr>
		<tr>
			<td><%=name%></td>
			<td><%=phone%></td>
			<td><%=juso%></td>
			<td><%=age%></td>
		</tr>
		<tr>
			<td><%=name2%></td>
			<td><%=phone2%></td>
			<td><%=juso2%></td>
			<td><%=age2%></td>
		</tr>
	</table>
	
</body>
</html>