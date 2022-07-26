<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
<div id="section">

<form method="post" action="write_ok.jsp">
	<h2>문의하기</h2>
	<table width="400" align="center">
		<tr>
			<td> 제 목 </td>
			<td> <input type="text" name="title" size="40" required> </td>
		</tr>
		<tr>
			<td> 내 용 </td>
			<td> <textarea cols="42" rows="8" name="content"></textarea> </td>
		</tr>
	</table>
	
	<p>
		<input type="password" name="pwd" placeholder="비밀번호 입력" required>
		<input type="submit" value="작성">
	</p>
	<a href="list.jsp">목록으로 이동</a>
</form>
	
</div>
<c:import url="../bottom.jsp" />