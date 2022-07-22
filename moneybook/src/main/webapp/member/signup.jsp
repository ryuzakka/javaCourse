<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- member_input.jsp -->

<c:import url="../top.jsp" />

<style>
	#section {
		width:1100px;
		height:auto;
		margin:auto;
		margin-top:70px;
		text-align:center;
	}
	#section table tr td:first-child {
		width:140px;
		text-align:right;
	}
	#section table tr td:nth-child(2) {
		text-align:left;
		padding-left:18px;
		
		height:60px;
	}
	#section table tr td:nth-child(2) input[type="text"] {
		width:300px;
		padding:5px;
	}
	#section table tr td:nth-child(2) input[type="password"] {
		width:300px;
		padding:5px;
	}
	#section #idError , #section #pwdError {
		font-size:13px;
		color:red;
	}
	#section #signupBtn {
		display:inline-block;
		width:200px;
		height:50px;
		background:#F0F8FF;
		border:1px solid lightgrey;
	}
	#section #signupBtn input[type="submit"] {
		width:200px;
		height:50px;
		text-align:center;
		background:none;
	}
	#section #signupBtn:hover {
		display:inline-block;
		width:200px;
		height:50px;
		background:#F0F8FF;
		border:2px solid grey;
	}
</style>

<div id="section">
<form name="memeberInputForm" method="post" action="signup_ok.jsp" onsubmit="return final_check(this)">
	<h2> 회원 가입 </h2>
	<table width="560" align="center" border="0">
		<tr>
			<td> 아이디* </td>
			<td>
				<input type="text" name="userid" placeholder="한글은 안되요~" onkeyup="useridCharacterCheck(this)" onblur="userid_check(this)" required><br>
				<div id="idError" style="color:tomato;font-size:12px;visibility:hidden"></div>
			</td>
		</tr>
		<tr>
			<td> 닉네임* </td>
			<td>
				<input type="text" name="name" placeholder="실명은 사용하지 않으셔도 됩니다 !" required><br>
				<div style="font-size:12px;">
					<!-- <strong style="color:tomato;"></strong> -->
					<span style="color:mediumblue;">닉네임은 게시판에서 활용됩니다.</span>
				</div>
			</td>
		</tr>
		<tr>
			<td> 비밀번호* </td>
			<td>
				<input type="password" name="pwd" required><br>
			</td>
		</tr>
		<tr>
			<td> 비밀번호 확인* </td>
			<td>
				<input type="password" name="pwd2" onkeyup="pwd_check(this)" required><br>
				<div id="pwdError" style="color:tomato;font-size:12px;visibility:hidden"></div>
			</td>
		</tr>
		<tr>
			<td> 연락처 </td>
			<td>
				<input type="text" name="phone" placeholder="연락처는 ID/PW 찾을 때 사용됩니다." onkeyup="phone_check(this)" onblur="phone_lenCheck(this)">
				<div><strong id="phoneError" style="color:red;font-size:12px;"></strong></div>
			</td>
		</tr>
		<tr>
			<td> 블로그 </td>
			<td>
				<input type="text" name="blog" placeholder="http://">
			</td>
		</tr>
		<tr>
			<td> SNS </td>
			<td>
				<input type="text" name="sns" placeholder="자신의 SNS를 자랑해보세요 !">
			</td>
		</tr>
	</table>
	
	<div id="signupBtn"><input type="submit" value="가입하기" ></div><p>
	<a href="../main/index.jsp"><input type="button" value="메인으로 가기"></a>
	<a href="../member/login.jsp"><input type="button" value="로그인"></a>
</form>
</div>

<c:import url="../bottom.jsp" />