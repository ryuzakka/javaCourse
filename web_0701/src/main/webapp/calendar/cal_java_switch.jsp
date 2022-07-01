<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>calendar : java</title>
<style>
	body {
		margin:40px;
	}
</style>
</head>
<body>	<!-- 0701/cal_java.jsp -->

<%@ page import="java.time.LocalDate" %>
<%
	// 달력을 만들 때 필요한 값
	// 1. 만들고자 하는 달의 1일의 요일
	// 2. 만들고자 하는 달의 총 일수
	// 3. 몇 주인가? (몇 행인가?)
	
	/* 달력 만들기 */
	
	// 년, 월 설정하기
	int year;
	int month;
	if(request.getParameter("year")==null) {
		LocalDate today = LocalDate.now();
		year = today.getYear();	// 현재 년
		month = today.getMonthValue();	// 현재 월		
	} else {
		year =  Integer.parseInt(request.getParameter("year"));
		month = Integer.parseInt(request.getParameter("month"));
	}

	// 1일의 요일
	LocalDate xday = LocalDate.of(year, month, 1);
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
	
	<table width="500" height="400" border="1">
		<caption>
		<% if(month == 1) { %>
			<a href="cal_java_switch.jsp?year=<%=year-1%>&month=12"><input type="button" value="이전"></a>
		<% } else { %>
			<a href="cal_java_switch.jsp?year=<%=year%>&month=<%=month-1%>"><input type="button" value="이전"></a>
		<% } %>
			<strong><%=year%>년 <%=month%></strong>
		<% if(month == 12) { %>
			<a href="cal_java_switch.jsp?year=<%=year+1%>&month=1"><input type="button" value="다음"></a>
		<% } else { %>
			<a href="cal_java_switch.jsp?year=<%=year%>&month=<%=month+1%>"><input type="button" value="다음"></a>
		<% } %>
		</caption>
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
	for(int i=0; i<week; i++) { %>

		<tr>
	<%	for(int j=0; j<7; j++) {
			if( (j<yoil && i==0) || day>total ) { %>
			<td> &nbsp; </td>
	<%		} else { 
				String css;
				switch(j) {
					case 0:	css = "style='color:red'"; break;
					case 6:	css = "style='color:blue'"; break;
					default: css = "";
				}
	%>
			<td <%=css%> > <%=day%> </td>
	<%
				day++;
			}
		}
	%>

		</tr>
<%	} %>
	
	</table>
</body>
</html>