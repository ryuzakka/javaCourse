<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="dao.ReserveDao" %>
<c:if test="${userid == null}">
	<c:redirect url="../member/member_only.jsp" />
</c:if>
<%
	ReserveDao dao = new ReserveDao();
	dao.reserve_view(request, session);
%>
<!-- reserve_next.jsp -->
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
	#section table {
		margin-top:20px;
		margin-bottom:50px;
		border-spacing:0px;
	}
</style>
<div id="section">
	

<c:if test="${userid != null}">
	
	<h2>${username}님의 예약정보</h2>
	
	<c:forEach items="${reserve}" var="reservation">
	<table width="600" align="center" border="1">
		<tr>
			<td> <strong>입실일</strong> </td>
			<td> ${reservation.checkin} </td>
			<td> <strong>숙박일수</strong> </td>
			<td> ${reservation.checkout} </td>
		</tr>
		<tr>
			<td> <strong>방이름</strong> </td>
			<td> ${reservation.bang} </td>
			<td> <strong>입실인원</strong> </td>
			<td> ${reservation.inwon}</td>
		</tr>
		<tr>
			<td> <strong>숯패키지</strong> </td>
			<td> ${reservation.charcoal} </td>
			<td> <strong>BBQ(식재료)</strong> </td>
			<td> ${reservation.bbq} </td>
		</tr>
	</table>
	</c:forEach>
</c:if>
	
</div>
<c:import url="../bottom.jsp" />