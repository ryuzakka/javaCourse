<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="dao.QnaDao" %>
<%
	QnaDao dao = new QnaDao();
	dao.content(request, 1);
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
	#section table tr td:nth-child(2) {
		text-align:left;
		padding:10px;
	}
	
</style>
<script>
	function pwdCheck() {
		var frm = document.getElementById('pwdInput');
		frm.style.display = "block";
	}
</script>
<div id="section">
	
	<h2>${content.title}</h2>
	<table width="600" align="center" border="1">
		<tr>
			<td> 제 목 </td>
			<td> ${content.title} </td>
		</tr>
		<tr>
			<td> 작성자 </td>
			<td> ${content.name} </td>
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
	<a href="update.jsp?id=${content.id}"><input type="button" value="수정"></a>
	<input type="button" value="삭제" onclick="pwdCheck()">
	<div id="pwdInput" style="display:none">
		<form name="pwdInputForm" method="post" action="delete.jsp?">
			<input type="password" name="pwd" placeholder="비밀번호 입력">
			<input type="hidden" name="id" value="${content.id}">
			<input type="hidden" name="grp" value="${content.grp}">
			<input type="hidden" name="depth" value="${content.depth}">
			<input type="hidden" name="seq" value="${content.seq}">
			<input type="submit" name="submit" value="삭제하기">
		</form>
	</div>
	<c:if test="${userid == 'admin'}">
		<form method="post" action="rewrite.jsp">
			<input type="hidden" name="id" value="${content.id}">
			<input type="hidden" name="title" value="${content.title}">
			<input type="hidden" name="grp" value="${content.grp}">
			<input type="hidden" name="depth" value="${content.depth}">
			<input type="hidden" name="seq" value="${content.seq}">
			<input type="submit" value="답글 달기">
		</form>
	</c:if>
	<a href="list.jsp">목록으로</a>
	
</div>
<c:import url="../bottom.jsp" />