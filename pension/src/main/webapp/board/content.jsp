<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="dao.BoardDao" %>
<%
	BoardDao dao = new BoardDao();
	dao.content(request,1);
%>

<!-- board/content.jsp -->
<c:import url="../top.jsp" />
<style>
	#section {
		width:1100px;
		height:400px;
		margin:auto;
		margin-top:80px;
		text-align:center;
	}
	#section table tr td:first-child {
		text-align:center;
	}
	#section .pwd_input {
		display:none;
	}
</style>
<div id="section">
	
	<table width="400" align="center" border="1">
		<caption><h3>${content.title}</h3></caption>
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
			<td> 조회수 </td>
			<td> ${content.readnum} </td>
		</tr>
		<tr>
			<td> 작성일 </td>
			<td> ${content.writeday} </td>
		</tr>
	</table>
	<p>
	<a href="list.jsp"><input type="button" value="목록"></a><p>
	
	
	<c:if test="${content.userid == sessionScope.userid}">
		<a href="delete.jsp?id=${content.id}"><input type="button" value="삭제"></a>
		<a href="update.jsp?id=${content.id}"><input type="button" value="수정"></a>
	</c:if>
	
	<c:if test="${content.userid == 'guest'}">
		<a href="update.jsp?id=${content.id}"><input type="button" value="수정"></a>
		<input type="button" value="삭제" onclick="board_delete_pwd()">
	</c:if>
	
	<c:if test="${userid == 'admin'}">	
		<p><a href="delete.jsp?id=${content.id}"><input type="button" value="관리자삭제"></a></p>
	</c:if>
	
	<p>
	
	<div class="pwd_input">
		<form name="pwdInputForm" method="post" action="delete.jsp">
			<input type="hidden" name="id" value="${content.id}">
			<input type="password" name="pwd" placeholder="비밀번호" >
			<input type="submit" value="삭제">
		</form>
	</div>
	
</div>
<c:import url="../bottom.jsp" />