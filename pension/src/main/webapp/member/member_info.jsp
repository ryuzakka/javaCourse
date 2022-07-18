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
	}
</style>

<%@ page import="dao.MemberDao" %>
<%
	MemberDao dao = new MemberDao();
	dao.getUserInfo(request, session);
%>

<div id="section">
	<table width="500" align="center" border="1">
		<caption><h2> 회원 가입 </h2></caption>
		<tr>
			<td width="140"> 아이디 </td>
			<td>${member.userid}</td>
		</tr>
		<tr>
			<td> 이 름 </td>
			<td>${member.name}</td>
		</tr>
		<tr>
			<td> 이메일 </td>
			<td>${member.email}</td>
		</tr>
		<tr>
			<td> 전화번호 </td>
			<td>${member.phone}</td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<p><a href="member_update.jsp"><input type="button" value="회원정보 변경"></a>
				<a href="pwd_change.jsp"><input type="button" value="비밀번호 변경"></a></p>
				<p><a href="../main/index.jsp"><input type="button" value="메인으로 가기"></a></p>
			</td>
		</tr>
	</table>
</div>

<c:import url="../bottom.jsp" />