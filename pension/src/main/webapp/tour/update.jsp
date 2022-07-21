<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="dao.TourDao" %>
<%
	TourDao dao = new TourDao();
	dao.content(request, 2);
%>
<!-- tour/update.jsp -->
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
<script>
	window.onload = function() {
		var hh = 120;
		var th1 = document.getElementsByTagName('table')[0].offsetHeight;
		var res = hh + th1;

		document.getElementById('section').style.height = res+"px"; 
	}
</script>
<div id="section">
<form method="post" action="update_ok.jsp" enctype="multipart/form-data">
	<h2>여행 후기글 수정</h2>
	<input type="hidden" name="id" value="${content.id}">
	<table width="500" align="center" border="1">
		<tr>
			<td> 제 목 </td>
			<td><input type="text" name="title" value="${content.title}"></td>
		</tr>
		<tr>
			<td> 작성자 </td>
			<td> ${content.userid} </td>
		</tr>
		<tr>
			<td> 내 용 </td>
			<td><textarea rows="10" cols="50" name="content">${content.content}</textarea></td>
		</tr>
		<tr>
			<td> 사 진 </td>
			<td>
				<input type="hidden" name="oldfname" value="${content.fname}">
				<input type="file" name="newfname"><p>
				<span>기존 사진</span>
				<c:if test="${content.fname != null}"><img src="../tour/img/${content.fname}" width="100"></c:if>
				<c:if test="${content.fname == null}"><span> 없음</span></c:if>				
			</td>
		</tr>
	</table>
	
	<p><input type="submit" value="수정완료"></p>
</form>

	<a href="list.jsp"><input type="button" value="목록으로"></a>
</div>
<c:import url="../bottom.jsp" />