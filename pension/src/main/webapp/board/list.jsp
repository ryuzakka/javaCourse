<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="dao.BoardDao" %>
<%
	BoardDao dao = new BoardDao();
	dao.list(request);
%>

<!-- board/list.jsp -->
<style>
	#section {
		width:1100px;
		height:400px;
		margin:auto;
		margin-top:80px;
		text-align:center;
	}
	#section > table {
		display:inline-block;
	}
	#section table tr:first-child {
		text-align:center;
	}
</style>
<c:import url="../top.jsp" />

<div id="section">
	<h2>자유게시판</h2>
	<a href="write.jsp"><input type="button" value="글쓰기"></a> <p>
	<table width="600" border="1" align="center">
		<tr>
			<td> 제 목 </td>
			<td> 작성자 </td>
			<td> 조회수 </td>
			<td> 작성일 </td>
		</tr>
		
		<c:forEach items="${list}" var="bdto">
		<tr>
			<td><a href="readnum.jsp?id=${bdto.id}">${bdto.title}</a></td>
			<td> ${bdto.userid} </td>
			<td> ${bdto.readnum} </td>
			<td> ${bdto.writeday} </td>
		</tr>
		</c:forEach>
	</table>
</div>
	
<c:import url="../bottom.jsp" />