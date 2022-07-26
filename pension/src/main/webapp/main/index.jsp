<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="dao.GongjiDao" %>
<%@ page import="dao.BoardDao" %>
<%@ page import="dao.TourDao" %>
<%
	GongjiDao gdao = new GongjiDao();
	BoardDao bdao = new BoardDao();
	TourDao tdao = new TourDao();
	
	gdao.getRecent(request);
	bdao.getRecent(request);
	tdao.getRecent(request);
%>
<c:import url="../top.jsp" />
<style>
	#fourth .list {
		list-style:none;
		margin:16px 20px;
		border:1px solid grey;
		background:pink;
		width:280px;
		height:24px;
		vertical-align:center;
		font-size:13px;
		padding-inline-start:20px;
		cursor:pointer;
	}
	#fourth .list a {
		text-decoration:none;
		padding:3px;
	}
	#fourth .list a:visited {color:black;}
	#fourth .list li {display:inline-block;}
</style>
<script>
	function move(n, id) {
		if(n == 1) {
			location = "../gongji/content.jsp?id="+id;
		} else if(n == 2) {
			location = "../tour/readnum.jsp?id="+id;
		} else {
			location = "../board/readnum.jsp?id="+id;
		}
	}
</script>
	<div id="third">
		<div id="box"><img src="../img/main2.jpg" width="1100"></div>
	</div>
	<div id="fourth">
		<div id="gongji">공지사항
			<c:forEach items="${glist}" var="gongji">
				<ul class="list" onclick="move(1,${gongji.id})">
					<a href="../gongji/content.jsp?id=${gongji.id}">
					<li>
						<c:if test="${gongji.gubun == 0}">[일반]</c:if>
						<c:if test="${gongji.gubun == 1}">[긴급]</c:if>
					</li>
					<li>${gongji.title}</li>
					</a>
				</ul>
			</c:forEach>
		</div>
		<div id="tour">여행후기
			<c:forEach items="${tlist}" var="tour">
				<ul class="list" onclick="move(2,${tour.id})">
					<a href="../tour/content.jsp?id=${tour.id}">
					<li>${tour.title}</li>
					<li>(${tour.writeday})</li>
					</a>
				</ul>
			</c:forEach>
		</div>
		<div id="board">자유게시판
			<c:forEach items="${blist}" var="board">
				<ul class="list" onclick="move(3,${board.id})">
					<a href="../board/content.jsp?id=${board.id}">
					<li>${board.title}</li>
					<li>(${board.writeday})</li>
					</a>
				</ul>
			</c:forEach>
		</div>
	</div>
	<div id="fifth">
		<div id="e1">event#1</div>
		<div id="e2">event#2</div>
		<div id="e3">event#3</div>
		<div id="e4">event#4</div>
		<div id="e5">event#5</div>
	</div>
<c:import url="../bottom.jsp" />