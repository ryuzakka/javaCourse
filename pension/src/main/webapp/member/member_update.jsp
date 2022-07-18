<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- member_update.jsp -->
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

<%@ page import="dao.MemberDao" %>
<%
	MemberDao dao = new MemberDao();
	dao.getUserInfo(request, session);
%>

<div id="section">
	<table width="500" align="center" border="1">
	<form name="memeberInputForm" method="post" action="member_update_ok.jsp">
		<caption><h2> 회원 가입 </h2></caption>
		<input type="hidden" name="id" value="${member.id}">
		<tr>
			<td width="140"> 아이디 </td>
			<td>
				<input type="text" value="${member.userid}" disabled><br>
				<input type="hidden" name="userid" value="${member.userid}">
			</td>
		</tr>
		<tr>
			<td> 이 름 </td>
			<td> <input type="text" name="name" value="${member.name}" required> </td>
		</tr>
		<tr>
			<td> 이메일 </td>
			<td>
				<input type="text" name="email" value="${member.email}" onblur="mail_check(this)"><br>
				<span id="mailError"></span>
			</td>
		</tr>
		<tr>
			<td> 전화번호 </td>
			<td>
				<input type="text" name="phone" value="${member.phone}" onkeyup="phone_check(this)" required><br>
				<span id="phoneError"></span>
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<p><input type="password" name="pwd" placeholder="비밀번호" required>
				<input type="submit" value="수정하기"></p>
				<% if(request.getParameter("chk") != null) { %>
				<span style="fontSize:13px;color:red">비밀번호가 틀렸습니다.</span>
				<% } %>
				<p><a href="../main/index.jsp"><input type="button" value="메인으로 가기"></a></p>
			</td>
		</tr>
	</form>
	</table>
</div>

<c:import url="../bottom.jsp" />