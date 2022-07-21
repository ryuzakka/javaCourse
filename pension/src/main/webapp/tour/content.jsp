<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="dao.TourDao" %>
<%
	TourDao dao = new TourDao();
	dao.content(request, 1);
%>
<!-- tour/content.jsp -->
<c:import url="../top.jsp" />
<style>
	#section {
		width:1100px;
		height:400px;
		margin:auto;
		margin-top:80px;
		text-align:center;
	}
	#section table tr td:nth-child(2) {
		text-align:left;
		padding-left:12px;
	}
</style>
<script>
	window.onload = function() {
		var hh = 140;
		var th1 = document.getElementsByTagName('table')[0].offsetHeight;
		var res = hh + th1;

		document.getElementById('section').style.height = res+"px"; 
	}
	
	function delCheck(id, fname) {
		var chk = confirm('삭제하시겠습니까?');
		var loc = "delete.jsp?id="+id+"&fname="+fname;
		if(chk)
			location = loc;
		else
			return false;
	}
</script>
<div id="section">
	<h3>${content.title}</h3>
	<table width="500" align="center" border="1">
		<tr>
			<td> 제 목 </td>
			<td> ${content.title} </td>
		</tr>
		<tr>
			<td> 작성자 </td>
			<td> ${content.userid} </td>
		</tr>
		<tr>
			<td> 내 용 </td>
			<td> ${content.content} </td>
		</tr>
		<tr>
			<td> 사 진 </td>
			<td> <img src="../tour/img/${content.fname}" width="300"> </td>
		</tr>
		<tr>
			<td> 조회수 </td>
			<td> ${content.readnum} </td>
		</tr>
		<tr>
			<td> 작성일 </td>
			<td> ${content.writeday} </td>
		</tr>
	</table>
	<p>
	
	<c:if test="${userid == content.userid || userid == 'admin'}">
		<p><a href="javascript:delCheck(${content.id},'${content.fname}')"><input type="button" value="삭제"></a>
		<c:if test="${userid == content.userid}">
			<a href="update.jsp?id=${content.id}"><input type="button" value="수정"></a>
		</c:if>
		</p>
	</c:if>
	
	<a href="list.jsp"><input type="button" value="목록으로"></a>
	
</div>
<c:import url="../bottom.jsp" />