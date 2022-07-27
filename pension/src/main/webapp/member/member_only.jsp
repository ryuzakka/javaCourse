<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- member_only.jsp -->
<c:import url="../top.jsp" />
<style>
	#section {
		width:1100px;
		height:auto;
		margin:auto;
		margin-top:80px;
		text-align:center;
	}
	#section #msg {
		width:1100px;
		height:200px;
		padding-top:100px;
		text-align:center;
	}
</style>
<div id="section">
	
	<div id="msg">
		<h3> 회원전용 페이지 입니다. </h3>
		<div> 로그인하고 이용 바랍니다. </div>
	</div>
	
</div>
<c:import url="../bottom.jsp" />