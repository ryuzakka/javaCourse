<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${userid != 'admin'}">
	<c:redirect url="list.jsp" />
</c:if>

<%@ page import="dao.GongjiDao" %>
<%
	GongjiDao dao = new GongjiDao();
	dao.content(request,2); 
%>

<!-- gongji/update.jsp -->
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
		padding-left:8px;
		text-align:left;
	}
</style>
<script>
/* 	window.onload = function() {
		<c:if test="${article.gubun == '1'}">
			document.getElementById("gubun").checked = true;
		</c:if>
	} */
</script>
<div id="section">
<form method="post" action="update_ok.jsp">
	<h2>공지사항 글쓰기</h2>
	<input type="hidden" name="id" value="${article.id}">
	<table width="500" align="center" border="0">
		<tr>
			<td> 제 목 </td>
			<td> <input type="text" name="title" size="50" value="${article.title}"> </td>
		</tr>
		<tr>
			<td> 내 용 </td>
			<td> <textarea rows="10" cols="52" name="content">${article.content}</textarea> </td>
		</tr>
	</table>
	
	<c:if test="${article.gubun == 1}">
		<c:set var="gu" value="checked" />
	</c:if>
	<p><input type="checkbox" id="gubun" name="gubun" value="1" ${gu}>
	이 글을 항상 첫페이지에 출력하고자 하면 체크하세요. </p>
	<input type="submit" value="수정 완료"> <p>
	<a href="list.jsp"><input type="button" value="목록으로"></a>
</form>
</div>
<c:import url="../bottom.jsp" />