<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${userid != 'admin'}">
	<c:redirect url="list.jsp" />
</c:if>

<!-- gongji/write.jsp -->
<c:import url="../top.jsp" />
<style>
	#section {
		width:1100px;
		height:auto;
		margin:auto;
		margin-top:80px;
		text-align:center;
	}
	#section table tr td:nth-child(2) {
		padding-left:8px;
		text-align:left;
	}
	#section table tr td input[type='text'] {
		padding-left:5px;
	}
	#section table tr td textarea{
		padding:5px;
	}
</style>
<div id="section">
<form method="post" action="write_ok.jsp">
	<h2>공지사항 글쓰기</h2>
	<table width="500" align="center" border="0">
		<tr>
			<td> 제 목 </td>
			<td> <input type="text" name="title" size="50"> </td>
		</tr>
		<tr>
			<td> 내 용 </td>
			<td> <textarea rows="10" cols="52" name="content"></textarea> </td>
		</tr>
	</table>
	<p><input type="checkbox" name="gubun" value="1">
	이 글을 항상 첫페이지에 출력하고자 하면 체크하세요. </p>
	<input type="submit" value="글쓰기 완료"> <p>
	<a href="list.jsp"><input type="button" value="목록으로"></a>
</form>
</div>
<c:import url="../bottom.jsp" />