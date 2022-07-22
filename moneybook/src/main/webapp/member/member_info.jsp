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
	<caption><h2> 회원정보 </h2></caption>
	<table width="400" align="center" border="1">
		<tr>
			<td width="140"> 아이디 </td>
			<td>${member.userid}</td>
		</tr>
		<tr>
			<td> 닉네임 </td>
			<td>${member.name}</td>
		</tr>
		<tr>
			<td> 연락처 </td>
			<td>${member.phone}</td>
		</tr>
		<tr>
			<td> 블로그 </td>
			<td>${member.blog}</td>
		</tr>
		<tr>
			<td> sns </td>
			<td>${member.sns}</td>
		</tr>
	</table>
	<p><a href="member_update.jsp"><input type="button" value="회원정보 변경"></a>
	<a href="pwd_change.jsp"><input type="button" value="비밀번호 변경"></a></p>
	<p><a href="../main/index.jsp"><input type="button" value="메인으로 가기"></a></p>
</div>

<c:import url="../bottom.jsp" />