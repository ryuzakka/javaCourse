<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="dao.QnaDao" %>
<%
	QnaDao dao = new QnaDao();
	dao.list(request);
%>
<c:import url="../top.jsp" />
<style>
	#section {
		width:1100px;
		height:400px;
		margin:auto;
		margin-top:80px;
		text-align:center;
	}
	#section table tr:first-child {
		text-align:center;
	}
	#section table tr {
		text-align:left;
	}
	#section table tr td {
		padding:7px;
	}
</style>
<div id="section">
	
	<h2>문의 게시판</h2>
	<p><a href="write.jsp"><input type="button" value="문의하기" ></a></p>
	<table width="800" align="center" border="1">
		<tr>
			<td> 제 목 </td>
			<!-- <td> 이 름 </td> -->
			<td width="50"> 조회수 </td>
			<td width="110"> 작성일 </td>
			<!-- <td> grp </td>
			<td> depth </td>
			<td> seq </td> -->
		</tr>
		
		<c:forEach items="${list}" var="qna">
			<c:set var="str" value="" />
			<c:if test="${qna.depth != 1}">
				<c:forEach begin="1" end="${qna.depth}" step="1"><c:set var="str" value="${str = '&nbsp;&nbsp;'}" /></c:forEach>
				<c:set var="str" value="${str += '└ '}" />
			</c:if>
			<tr>
				<td>${str}<a href="readnum.jsp?id=${qna.id}">${qna.title}</a></td>
				<%-- <td>${qna.name}</td> --%>
				<td>${qna.readnum}</td>
				<td>${qna.writeday}</td>
				<%-- <td>${qna.grp}</td>
				<td>${qna.depth}</td>
				<td>${qna.seq}</td> --%>
			</tr>
		</c:forEach>
	</table>
	 
	
</div>
<c:import url="../bottom.jsp" />