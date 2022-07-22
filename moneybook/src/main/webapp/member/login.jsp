<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- member/login.jsp -->

<c:import url="../top.jsp" />
<style>
	#section {
		width:1100px;
		height:300px;
		margin:auto;
		margin-top:80px;
		text-align:center;
	}
	#section #inputField {
		margin-top:40px;
	}
	#section input[type="text"] {
		width:300px;
		padding:5px;
	}
	#section input[type="password"] {
		width:300px;
		padding:5px;
	}
	#section #btnField {
		margin-top:30px;
	}
</style>

<div id="section">
	<h2>로그인</h2>
	<form method="post" action="login_ok.jsp">
		<div id="inputField">
			<input type="text" name="userid" placeholder="아이디" onkeyup="useridCharacterCheck(this)"> <p>
			<input type="password" name="pwd" placeholder="비밀번호"> <p>
		</div>
	<% if(request.getParameter("chk") != null) { %>
		<div style="color:tomato;font-size:13px;">계정 정보가 일치하지 않습니다.</div>
	<% } %>
		<div id="btnField">
			<input type="submit" value="로그인" > 
			<a href="../main/index.jsp"><input type="button" value="메인으로"> </a> <p>
		</div>
		<a href="member_find.jsp" style="font-size:13px;">아이디/비밀번호 찾기</a>
	</form>
</div>

<c:import url="../bottom.jsp" />