<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="dao.GongjiDao" %>
<%
	GongjiDao dao = new GongjiDao();
	dao.list(request);
%>
<!-- gongji/list.jsp -->
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
	<h2> 공지사항 </h2>
	<c:if test="${userid == 'admin'}">
		<p><a href="write.jsp"><input type="button" value="글쓰기"></a></p>
	</c:if>
	<table width="700" align="center" border="1">
		<tr>
			<td> 구 분 </td>
			<td> 제 목 </td>
			<td> 작성일 </td>
		</tr>
		
		<c:forEach items="${list}" var="gongji">
			<tr>
				<td>
					<c:if test="${gongji.gubun != 0}">공지</c:if>
					<c:if test="${gongji.gubun == 0}">일반</c:if>
				</td>
				<td><a href="content.jsp?id=${gongji.id}">${gongji.title}</a></td>
				<td> ${gongji.writeday} </td>
			</tr>
		</c:forEach>
	</table>
</div>
<c:import url="../bottom.jsp" />