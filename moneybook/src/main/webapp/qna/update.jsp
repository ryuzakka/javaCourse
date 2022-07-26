<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="dao.QnaDao" %>
<%
	QnaDao dao = new QnaDao();
	dao.content(request, 2);
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
	#section #pwdErr {
		color:tomato;
		font-size:12px;
	}
</style>
<div id="section">

	<!-- 일반 문의글 수정 -->
	<c:if test="${userid != 'admin'}">
	<form method="post" action="update_ok.jsp">
		<h2>문의하기</h2>
		<table width="400" align="center">
			<input type="hidden" name="id" value="${content.id}">
			<tr>
				<td> 제 목 </td>
				<td> <input type="text" name="title" value="${content.title}" size="40" required> </td>
			</tr>
			<tr>
				<td> 내 용 </td>
				<td> <textarea cols="42" rows="8" name="content">${content.content}</textarea> </td>
			</tr>
		</table>
		
		<p>
		<input type="password" name="pwd" placeholder="비밀번호 입력" required>
		<input type="submit" value="수정하기"><br>
		<% if(request.getParameter("chk") != null) { %>
		<span id="pwdErr">비밀번호가 틀렸습니다.</span>
		<% } %>
		</p>
		
		<p><a href="list.jsp"><input type="button" value="목록"></a></p>
	</form>
	</c:if>

	<!-- 관리자 답변글 수정 -->
	<c:if test="${userid == 'admin'}">
	<form method="post" action="update_ok_admin.jsp">
		<h2>문의하기</h2>
		<table width="400" align="center">
			<input type="hidden" name="id" value="${content.id}">
			<tr>
				<td> 제 목 </td>
				<td> <input type="text" name="title" value="${content.title}" size="40" required> </td>
			</tr>
			<tr>
				<td> 내 용 </td>
				<td> <textarea cols="42" rows="8" name="content">${content.content}</textarea> </td>
			</tr>
		</table>
		<p><input type="submit" value="수정하기"></p>
		<p><a href="list.jsp"><input type="button" value="목록"></a></p>
	</form>
	</c:if>

</div>
<c:import url="../bottom.jsp" />