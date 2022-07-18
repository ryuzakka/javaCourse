<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- login.jsp -->

<c:import url="../top.jsp" />
<style>
	#section {
		width:1100px;
		height:250px;
		margin:auto;
		margin-top:80px;
		text-align:center;
	}
</style>

<div id="section">
	<h2>로그인</h2>
	<form method="post" action="login_ok.jsp">
		<input type="text" name="userid" placeholder="아이디"> <p>
		<input type="password" name="pwd" placeholder="비밀번호"> <p>
		<input type="submit" value="로그인" > 
		<a href="../main/index.jsp"><input type="button" value="메인으로"> </a> <p>
	<% if(request.getParameter("chk") != null) { %>
		<span style="color:red">계정 정보가 일치하지 않습니다.</span> <p>
	<% } %>
		<a href="member_find.jsp">아이디/비밀번호 찾기</a>
	</form>
</div>

<c:import url="../bottom.jsp" />
