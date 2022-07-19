<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="dao.BoardDao" %>
<%
	BoardDao dao = new BoardDao();
	dao.content(request,2);
%>
<!-- board/update.jsp -->
<style>
	#section {
		width:1100px;
		height:400px;
		margin:auto;
		margin-top:80px;
		text-align:center;
	}
	#section .pwd_input span {
		font-size:13px;
		color:red;
	}
</style>
<c:import url="../top.jsp" />
<div id="section">
<form method="post" action="update_ok.jsp">
	<input type="hidden" name="id" value="${content.id}">
	<table width="450" align="center" border="1">
		<tr>
			<td> 제 목 </td>
			<td> <input type="text" name="title" value="${content.title}"> </td>
		</tr>
		<tr>
			<td> 내 용 </td>
			<td> <textarea rows="10" cols="50" name="content">${content.content}</textarea> </td>
		</tr>
	</table>
	<p>
	<c:if test="${content.userid == 'guest'}">
		<div class="pwd_input">
			<% if(request.getParameter("chk") != null) { %>
			<p><span>비밀번호가 일치하지 않습니다.</span></p>
			<% } %>
			<input type="password" name="pwd" placeholder="삭제 비밀번호" >
		</div>
	</c:if>
	<p>
	<input type="submit" value="저장">
	<a href="content.jsp?id=${content.id}"><input type="button" value="취소"></a>
	<p>
	
	
</form>	
</div>
<c:import url="../bottom.jsp" />