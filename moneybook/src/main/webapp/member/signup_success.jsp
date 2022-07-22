<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- member/signin_success.jsp -->

<c:import url="../top.jsp" />
	
	<div align="center" style="margin-top:80px;margin-bottom:80px">
		<h1>회원가입 완료</h1>
		<div>회원가입이 성공적으로 완료됐습니다.</div>
		<div>
			<p><a href="login.jsp"><input type="button" value="로그인 할래요"></a></p>
			<a href="../main/index.jsp" style="font-size:12px">그냥 메인페이지로 갈래요</a>
		</div>
	</div>
	
<c:import url="../bottom.jsp" />