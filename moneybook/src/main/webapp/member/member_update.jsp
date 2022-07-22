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
<form name="memeberInputForm" method="post" action="member_update_ok.jsp">
	<table width="400" align="center" border="1">
		<caption><h2> 회원정보 수정 </h2></caption>
		<input type="hidden" name="id" value="${member.id}">
		<tr>
			<td width="140"> 아이디 </td>
			<td> <input type="text" value="${member.userid}" disabled><br> </td>
			<input type="hidden" name="userid" value="${member.userid}">
		</tr>
		<tr>
			<td> 이 름 </td>
			<td> <input type="text" value="${member.name}" disabled> </td>
			<input type="hidden" name="name" value="${member.name}">
		</tr>
		<tr>
			<td> 연락처 </td>
			<td>
				<input type="text" name="phone" value="${member.phone}" placeholder="연락처는 ID/PW 찾을 때 사용됩니다." onkeyup="phone_check(this)" onblur="phone_lenCheck(this)"><br>
				<strong id="phoneError" style="color:red;font-size:12px"></strong>
			</td>
		</tr>
		<tr>
			<td> 블로그 </td>
			<td>
				<input type="text" name="email" value="${member.blog}"><br>
			</td>
		</tr>
		<tr>
			<td> SNS </td>
			<td>
				<input type="text" name="sns" value="${member.sns}"><br>
			</td>
		</tr>
	</table>
	
	<% if(request.getParameter("chk") != null) { %>
	<div style="fontSize:13px;color:tomato">비밀번호가 틀렸습니다.</div>
	<% } %>
	<p><input type="password" name="pwd" placeholder="비밀번호" required>
	<input type="submit" value="수정하기"></p>
	<p>
		<a href="../main/index.jsp"><input type="button" value="메인으로 가기"></a>
		<a href="member_info.jsp"><input type="button" value="뒤로가기"></a>		
	</p>
	
</form>
</div>

<c:import url="../bottom.jsp" />