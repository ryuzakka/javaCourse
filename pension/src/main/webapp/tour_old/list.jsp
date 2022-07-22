<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="dao.TourDao_old" %>
<%
TourDao_old dao = new TourDao_old();
	dao.list(request);
%>
<!-- tour/list.jsp -->
<c:import url="../top.jsp" />
<style>
	#section {
		width:1100px;
		height:400px;
		margin:auto;
		margin-top:80px;
		text-align:center;
	}
</style>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script>
	window.onload = function() {
		var hh = 100;
		var th1 = document.getElementsByTagName('table')[0].offsetHeight;
		var res = hh + th1;

		document.getElementById('section').style.height = res+"px"; 
	}
</script>
<div id="section">
	<h2>여행 후기</h2>
	<c:if test="${userid != null}">	
		<p><a href="write.jsp"><input type="button" value="후기 작성"></a></p>
	</c:if>
	<table width="600" align="center" border="1">
		<tr>
			<td> 미리보기 </td>
			<td> 제 목 </td>
			<td> 작성자 </td>
			<td> 조회수 </td>
			<td> 작성일 </td>
		</tr>
		
		<c:forEach items="${list}" var="tour"> 
		<tr>
			<td> <a href="readnum.jsp?id=${tour.id}"><img src="../tour/img/${tour.fname}" width="100"></a> </td>
			<td> <a href="readnum.jsp?id=${tour.id}">${tour.title}</a> </td>
			<td> ${tour.userid} </td>
			<td> ${tour.readnum} </td>
			<td> ${tour.writeday} </td>
		</tr>
		</c:forEach>
		
	</table>
	<p>
	
</div>
<c:import url="../bottom.jsp" />