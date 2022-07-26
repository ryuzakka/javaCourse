<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${userid != 'admin'}">
	<c:redirect url="list.jsp" />
</c:if>
<%@ page import="dao.QnaDao" %>
<% 
	QnaDao dao = new QnaDao();
	dao.rewrite_form(request);
%>

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
<div id="section">

<form method="post" action="rewrite_ok.jsp">
	<h2>문의하기</h2>
	<table width="400" align="center">
		<tr>
			<td> 제 목 </td>
			<td> <input type="text" name="title" value="Re: ${reply.title}" size="40" required> </td>
		</tr>
		<tr>
			<td> 내 용 </td>
			<td> <textarea cols="42" rows="8" name="content"></textarea> </td>
		</tr>
	</table>
	<input type="hidden" name="grp" value="${reply.grp}">
	<input type="hidden" name="depth" value="${reply.depth}">
	<input type="hidden" name="seq" value="${reply.seq}">
	<p><input type="submit" value="작성"></p>
	<a href="list.jsp"><input type="button" value="목록"></a>
</form>
	
</div>
<c:import url="../bottom.jsp" />