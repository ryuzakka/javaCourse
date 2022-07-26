<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${userid == null}">
	<c:redirect url="list.jsp" />
</c:if>

<c:import url="../top.jsp" />
<style>
	#section {
		width:1100px;
		height:400px;
		margin:auto;
		margin-top:80px;
		text-align:center;
	}
	#section table tr td {	
		margin:7px;
	}
	#section table tr td:nth-child(2) {
		text-align:left;
	}
	#section table tr td input[type='text'] , textarea {
		padding:5px 10px;
	}
</style>
<div id="section">

<form name="boardInput" method="post" action="write_ok.jsp">
	<h2>자유게시판 글쓰기</h2>
	<table width="600" border="0" align="center">
		<tr>
			<td> 제 목 </td>
			<td> <input type="text" name="title" size="68" required> </td>
		</tr>
		<tr>
			<td> 내 용 </td>
			<td> <textarea cols="70" rows="12" name="content"></textarea> </td>
		</tr>
	</table>
	<p><input type="submit" value="작성완료"></p>
	<a href="list.jsp">목록으로</a>
</form>

</div>
<c:import url="../bottom.jsp" />