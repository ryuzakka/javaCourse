<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="dao.BoardDao" %>
<%
	BoardDao dao = new BoardDao();
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
	#section h2 {
		margin:50px 0px 15px 0px;
	}
	#section .pageIntro {
		font-size:14px;
		color:#2F4F4F;
		margin-bottom:40px;
	}
	#section table tr:first-child > td:first-child {
		text-align:center;
	}
	#section table tr td:first-child {
		text-align:left;
		padding-left:10px;
	}
</style>
<div id="section">
	
	<h2>자유게시판</h2>
	<div class="pageIntro">회원제 게시판 입니다. 내가 아는 맛집을 추가하려면 로그인 해주세요.</div>
	
	<c:if test="${userid != null}"><p><a href="write.jsp"><input type="button" value="글쓰기"></a></p></c:if>
	
	<table width="800" align="center" border="1">
		<tr>
			<td> 제 목 </td>
			<td width="140"> 작성자 </td>
			<td width="50"> 조회수 </td>
			<td width="110"> 작성일 </td>
		</tr>
		
		<c:forEach items="${list}" var="board">
			<tr>
				<td><a href="readnum.jsp?id=${board.id}">${board.title}</a></td>
				<td> ${board.name} </td>
				<td> ${board.readnum} </td>
				<td> ${board.writeday} </td>
			</tr>
		</c:forEach>
	</table>
	
	
</div>
<c:import url="../bottom.jsp" />