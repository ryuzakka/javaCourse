<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- pwd_change.jsp -->
<style>
	#section {
		width:1100px;
		height:250px;
		margin:auto;
		margin-top:80px;
		text-align:center;
	}
</style>

<c:import url="../top.jsp" />

	<div id="section">
		<form method="post" action="pwd_change_ok.jsp" onsubmit="return newpwd_check(this)">
			<h3>비밀번호 변경</h3>
			<input type="password" name="oldpwd" placeholder="기존 비밀번호"> <p>
			<input type="password" name="newpwd" placeholder="신규 비밀번호"> <p>
			<input type="password" name="newpwd2" placeholder="신규 비밀번호 확인"> <p>
			<span id="pwdError" style="fontSize:11px;color:red"></span> <p>
			<% if(request.getParameter("chk") != null) { %>
			<p><span style="fontSize:13px;color:red">기존 비밀번호가 잘못됐습니다.</span></p>
			<% } %>
			<input type="submit" value="비밀번호 변경" >
			<p><a href="../main/index.jsp"><input type="button" value="메인으로 가기"></a></p>
		</form>
	</div>

<c:import url="../bottom.jsp" />