<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="web_0704.Test2" %>
<%
	Test2 tt = new Test2();
	
	int sum1 = tt.sum1();
	int sum2 = tt.sum2();
	int avg = tt.avg(60, 80, 90);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>view2</title>
</head>
<body>	<!-- 0704/view2.jsp -->
	<!-- 
		Test2에 필요한 메소드를 생성 후 완성하기
	-->
	 
	<!-- 1. 1부터 100까지의 합을 출력 -->
	1 ~ 100까지의 합 : <%=sum1 %>
	<p>
	
	<!-- 2. 1~200 까지의 짝수의 합을 출력 -->
	1~200까지의 짝수의 합 : <%=sum2 %>
	<p>
	
	<!-- 3. 60,80,90  3개의 점수를 전달하여 평균을 출력 -->
	국, 영 수 평균 : <%=avg %>
	<p>
	
</body>
</html>