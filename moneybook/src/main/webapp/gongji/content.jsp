<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="dao.GongjiDao" %>
<%
	GongjiDao dao = new GongjiDao();
	dao.content(request, 1);
%>
<!-- gongji/content.jsp -->
<c:import url="../top.jsp" />
<style>
	#section {
		width:1100px;
		height:auto;
		margin:auto;
		margin-top:80px;
		text-align:center;
	}
</style>
<script>
	function delCheck(id) {
		var chk = confirm('삭제하시겠습니까?');
		if(chk)
			location="delete.jsp?id=" + id;
		else
			return false;
	}
</script>
<div id="section">
	<h3>${article.title}</h3>
	<table width="400" align="center" border="1">
		<tr>
			<td> 구 분 </td>
			<td>
				<c:if test="${gongji.gubun != 0}">공지</c:if>
				<c:if test="${gongji.gubun == 0}">일반</c:if>
			</td>
		</tr>
		<tr>
			<td> 제 목 </td>
			<td> ${article.title} </td>
		</tr>
		<tr>
			<td> 내 용 </td>
			<td> ${article.content} </td>
		</tr>
		<tr>
			<td> 작성일 </td>
			<td> ${article.writeday} </td>
		</tr>
	</table>
	
	<c:if test="${userid == 'admin'}">
		<p><a href="update.jsp?id=${article.id}"><input type="button" value="수정"></a>
		<a href="javascript:delCheck(${article.id})"><input type="button" value="삭제"></a>
	</c:if>
	
	<p>
		<a href="list.jsp"><input type="button" value="목록으로"></a><br>
		<a href="javascript:history.back()" style="font-size:12px">뒤로가기</a>
	</p>
</div>
<c:import url="../bottom.jsp" />