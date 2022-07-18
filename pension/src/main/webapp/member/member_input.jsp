<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- member_input.jsp -->

<c:import url="../top.jsp" />

<style>
	#section {
		width:1100px;
		height:400px;
		margin:auto;
	}
</style>

<!--
	1. 회원 아이디 조회
	2. 비밀번호의 일치여부
	3. 필수 입력 (아이디, 이름, 전화번호)
-->

<div id="section">
	<table width="500" align="center" border="1">
	<form name="memeberInputForm" method="post" action="member_input_ok.jsp" onsubmit="return final_check(this)">
		<caption><h2> 회원 가입 </h2></caption>
		<tr>
			<td width="140"> 아이디 </td>
			<td>
				<input type="text" name="userid" onblur="userid_check(this)" required><br>
				<span id="idError"></span>
			</td>
		</tr>
		<tr>
			<td> 이 름 </td>
			<td> <input type="text" name="name" required> </td>
		</tr>
		<tr>
			<td> 비밀번호 </td>
			<td>
				<input type="password" name="pwd" required><br>
				<!-- <span class="pwdError"></span> -->
			</td>
		</tr>
		<tr>
			<td> 비밀번호 확인 </td>
			<td>
				<input type="password" name="pwd2" onkeyup="pwd_check(this.value)" required><br>
				<span class="pwdError"></span>
			</td>
		</tr>
		<tr>
			<td> 이메일 </td>
			<td>
				<input type="text" name="email" onblur="mail_check(this)"><br>
				<span id="mailError"></span>
			</td>
		</tr>
		<tr>
			<td> 전화번호 </td>
			<td>
				<input type="text" name="phone" onkeyup="phone_check(this)" required><br>
				<span id="phoneError"></span>
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<p><input type="submit" value="가입하기"></p>
				<a href="../main/index.jsp"><input type="button" value="메인으로 가기"></a>
			</td>
		</tr>
	</form>
	</table>
</div>

<c:import url="../bottom.jsp" />