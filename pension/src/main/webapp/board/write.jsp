<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- board/write.jsp -->
<style>
	#section {
		width:1100px;
		height:400px;
		margin:auto;
		margin-top:80px;
		text-align:center;
	}
	#section table {
		display:inline-block;
	}
</style>
<c:import url="../top.jsp" />

<div id="section">
	<form method="post" action="write_ok.jsp">
		<caption><h2>자유게시판 글쓰기</h2></caption>
		<table width="450" border="1">
			<tr>
				<td width="90"> 제 목 </td>
				<td> <input type="text" name="title" size="44"> </td>
			</tr>
			<% if(session.getAttribute("userid") == null) { %>
			<tr>
				<td> 비밀번호 </td>
				<td> <input type="password" name="pwd"> </td>
			</tr>
			<% } %>
			<tr>
				<td> 내 용 </td>
				<td> <textarea cols="50" rows="10" name="content"></textarea> </td>
			</tr>
		</table>
		<p><input type="submit" value="글쓰기"></p>
	</form>
</div>

<c:import url="../bottom.jsp" />