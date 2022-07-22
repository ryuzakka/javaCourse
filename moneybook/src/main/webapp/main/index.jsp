<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="dao.LunchDao" %>
<%
	LunchDao ldao = new LunchDao();
	ldao.mainList(request);
%>
<style>
	#fifth .place {
		cursor:pointer;
	}
</style>
<c:import url="../top.jsp" />
<div id="section">
	<div id="third">
		<div id="mainImg"><img src="../img/main.jpg" width="1100" height="400"></div>
	</div>
	
	<div id="fifth">
		<h3 align="center" style="padding-left:90px;">최근에 등록된 맛집 <a href="../lunch/list.jsp"><input type="button" value="맛집 더보기"></a></h3>
		<c:forEach items="${list}" var="place">
			<div class="place" onclick="javascript:location='../lunch/readnum.jsp?id=${place.id}'">
				<div class="placeTitle">${place.title}</div>
				<div class="placeMenu">${place.menu}</div>
				<div class="placeAddr">${place.addr1}</div>
				<div class="placeRegname">${place.regname}</div>
			</div>
		</c:forEach>
	</div>
	
	<div id="fourth" style="display:none;">
		<div id="gongji"> 공지사항</div>
		<div id="tour"> 여행 후기 </div>
		<div id="board"> 게시판 </div>
	</div>
</div>	
<c:import url="../bottom.jsp" />