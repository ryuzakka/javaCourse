<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:import url="./top.jsp" />

<style>
	#section {
		width:960px;
		height:auto;
		margin:120px auto;
	}
	#section h1 {
		font-size:50px;
	}
	#section img {
		width:100%;
	}
	#section table span {
		margin-bottom:4px;
		font-size:12px;
		color:rgba(55, 53, 47, 0.65)
	}
	#section table input[type='text'] {
		width:320px;
		font-size:15px;
		line-height:26px;
		padding:4px 10px;
		border-radius:3px;
		border:1px solid lightgrey;
		color:rgba(55, 53, 47, 0.65);
		background:rgba(242, 241, 238, 0.6);
		cursor:text;
		margin-top:4px;
		margin-bottom:8px;
	}
	#section table input[type='submit'] {
		width:100%;
		height:36px;
		color:rgb(235, 87, 87);
		font-size:14px;
		line-height:26px;
		padding-left:12px;
		padding-right:12px;
		font-weight:500;
		background:rgb(253, 245, 242);
		margin-top:6px;
		margin-bottom:12px;
		border:1px solid rgb(235 87 87 / 30%);
	}
	#section table tr:last-child td:last-child , a {
		color:rgba(55, 53, 47, 0.65);
		font-size:14px;
		margin:8px 0px;
		text-align:center;
	}
</style>

<div id="section">

	<form method="post" action="signup_ok.jsp">
		<table width="320" align="center">
			<caption><h1> 회원 가입 </h1></caption>
			
			<tr><td><img src="./img/google.JPG"></td></tr>
			<tr><td><img src="./img/apple.JPG"><p></td></tr>
			
			<tr><td>
				<span>이메일</span><br>
				<input type="text" name="email" placeholder="이메일 주소를 입력하세요." required>
			</td></tr>
			<tr><td><input type="submit" value="이메일로 계속하기"></td></tr>
	
			<tr><td><a href="#">SAML SSO</a>를 사용하여 계속할 수도 있습니다.</td></tr>
	
		</table>
	</form>
	
</div>

<c:import url="./bottom.jsp" />