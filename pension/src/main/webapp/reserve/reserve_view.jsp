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
		margin-top:40px;
		margin-bottom:10px;
		border-spacing:0px;
	}
</style>
<script>
	function cancelCheck(id) {
		var chk = confirm("정말 취소하시겠습니까?");
		if(chk) {
			location = "state_change.jsp?state=1&id="+id;
		} else {
			return false;	
		}
	}
</script>
<div id="section">
	

<c:if test="${userid != null}">
	
	<h2>${userid}님의 예약정보</h2>
	
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
			<tr>
				<td colspan="4">
					<c:if test="${reservation.state == 0}"><span style="color:forestgreen;">예약 완료</span></c:if>
					<c:if test="${reservation.state == 1}"><span style="color:blue;">취소신청 중</span></c:if>
					<c:if test="${reservation.state == 2}"><span style="color:red;">취소 완료</span></c:if>
					<c:if test="${reservation.state == 3}"><span style="color:darkgrey;">사용 완료</span></c:if>
				</td>
			</tr>
		</table>
		<p>
			<c:if test="${reservation.state == 0}">
				<input type="button" value="취소할래요" onclick="cancelCheck(${reservation.id})">
			</c:if>
			<c:if test="${reservation.state == 1}">
				<input type="button" value="취소 안할래요" onclick="location='state_change.jsp?state=0&id=${reservation.id}'">
			</c:if>
		</p>
	</c:forEach>
</c:if>
	
</div>
<c:import url="../bottom.jsp" />