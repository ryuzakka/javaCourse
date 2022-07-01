<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>calendar : java</title>
</head>
<body>	<!-- 0701/cal_java.jsp -->

<%@ page import="java.time.LocalDate" %>
<%
	// 달력을 만들 때 필요한 값
	// 1. 만들고자 하는 달의 1일의 요일
	// 2. 만들고자 하는 달의 총 일수
	// 3. 몇 주인가? (몇 행인가?)
	
	/* 이번달의 달력 만들기 */
	
	LocalDate today = LocalDate.now();
	today.getMonthValue();	// 현재 달

	// 1일의 요일
	LocalDate xday = LocalDate.of(today.getYear(), today.getMonthValue(), 1);
	int yoil = xday.getDayOfWeek().getValue();	// 1(Monday) ~ 7(Sunday)
	
	// 총 일수
	int total = xday.lengthOfMonth();
	
	// 몇 주인가
	int week;
	if(yoil == 7) {
		yoil = 0;
	}
	week = (int)Math.ceil((total+yoil)/7.0);
	
%>
	<table width="500" height="400" border="1" align="center">
		<caption><h2><%=today.getMonthValue()%> 월</h2></caption>
		<tr align="center">
			<td> 일 </td>
			<td> 월 </td>
			<td> 화 </td>
			<td> 수 </td>
			<td> 목 </td>
			<td> 금 </td>
			<td> 토 </td>
		</tr>
		
<%	int day = 1;
	for(int i=0; i<week; i++) {
%>
		<tr>
<%		for(int j=0; j<7; j++) {
			if( (j<yoil && i==0) || day>total ) { 
%>
			<td> &nbsp; </td>
<%			} 
			else { 
				if(j==0) {
%>
			<td style="color:red"> <%=day%> </td>
<%
				} else if(j==6) {
%>
			<td style="color:blue"> <%=day%> </td>
<%
				} else {			
%>
			<td> <%=day %> </td>
<%
				}
				day++;
			}
		}
%>
		</tr>
<%	} %>

	</table>
	
</body>
</html>