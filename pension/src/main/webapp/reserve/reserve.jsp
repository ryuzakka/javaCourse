<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="dao.ReserveDao" %>
<%
	ReserveDao dao = new ReserveDao();
	// 달력 => 1일의 요일, 총일수, 주수..
	dao.getCalendar(request);
	dao.getRoom(request);
%>
<!-- reserve.jsp -->
<c:import url="../top.jsp" />
<style>
	#section {
		width:1100px;
		height:auto;
		margin:auto;
		margin-top:80px;
		margin-bottom:100px;
		text-align:center;
	}
	#section #monthTitle {
		width:1100px;
		position:relative;
		display:block;
	}
	#section #monthTitle a {
		text-decoration:none;
		color:black;
	}
	#section #monthTitle h1:hover {
		color:tomato;
		text-decoration:underline;
	}
	#section #monthTitle #moveMonthBtn {
		position:absolute;
		display:inline-block;
		top:13px;
		left:0px;
		width:1100px;
	}
	#section #monthTitle #moveMonthBtn a {
		margin:30px 130px;	
	}
	#section #cal {
		border-spacing:0px;
	}
	#section #cal tr:first-child {
		text-align:center;
		height:40px;
	}
	#section #cal tr:first-child td {	
		padding-top:8px;
		text-align:center;
	}
	#section #cal tr {
		/* height:60px; */
	}
	#section #cal tr td {
		vertical-align:top;
		text-align:left;
		padding-top:4px;
		padding-left:8px;
		width:142px;
	}
	#section #roomList {
		font-size:12px;
		padding-left:12px;
	}
</style>
<div id="section">

	<div id="monthTitle">
		<h1><a href="reserve.jsp">${year}년 ${month}월</a></h1>
		<div id="moveMonthBtn">
			<c:if test="${month == 1}"><a href="reserve.jsp?y=${year-1}&m=${12}"><input type="button" value="이전달"></a></c:if>
			<c:if test="${month != 1}"><a href="reserve.jsp?y=${year}&m=${month-1}"><input type="button" value="이전달"></a></c:if>
			
			<c:if test="${month == 12}"><a href="reserve.jsp?y=${year+1}&m=${1}"><input type="button" value="다음달"></a></c:if>
			<c:if test="${month != 12}"><a href="reserve.jsp?y=${year}&m=${month+1}"><input type="button" value="다음달"></a></c:if>
		</div>
	</div>
	
	<table id="cal" width="1000" align="center" border="1">
		<tr>
			<td>일</td>
			<td>월</td>
			<td>화</td>
			<td>수</td>
			<td>목</td>
			<td>금</td>
			<td>토</td>
		</tr>
		
		<c:set var="day" value="1" />
		<c:forEach var="i" begin="1" end="${weeks}" step="1">
		<tr>
			<c:forEach var="j" begin="0" end="6">
			<c:if test="${ (j<yoil && i==1) || day>total }">
				<td>&nbsp;</td>
			</c:if>
			
			<c:if test="${ !((j<yoil && i==1) || day>total) }">
				<td>
					${day}
					<!-- 방이름 출력 -->
					<div id="roomList">
					<%
					String y = request.getAttribute("year").toString();
					String m = request.getAttribute("month").toString();
					String d = pageContext.getAttribute("day").toString();
					String dday = y+"-"+m+"-"+d;
					dao.getAvail(request, y, m, d);
					%>
						<c:if test="${avail == 1}">
						<c:forEach items="${list}" var="room">
							<c:set var="bangid" value="${room.id}" />
							<!-- 방의 예약 여부체크(중복체크) => DAO메소드(년,월,일,방id) -->
							<%
							String bangid = pageContext.getAttribute("bangid").toString();
							
							dao.getEmpty(request, dday, bangid);
							%>
							
							<p>
							<c:if test="${cnt > 0}"><span style="color:tomato">${room.bang}</span></c:if>
							<c:if test="${cnt == 0}"><a href="reserve_next.jsp?y=${year}&m=${month}&d=${day}&bid=${room.id}">${room.bang} (인원:${room.min}-${room.max})</a></c:if>
							</p>
						</c:forEach>
						</c:if>
					</div>
				</td>
				
				<c:set var="day" value="${day+1}" />
			</c:if>
			</c:forEach>
		</tr>
		</c:forEach>
	</table>
	
</div>

<div style="display:none;">
요일 : ${yoil}
총일 : ${total}
주수 : ${weeks}
</div>

<c:import url="../bottom.jsp" />