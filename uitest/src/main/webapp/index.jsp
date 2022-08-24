<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:import url="./top.jsp" />
<style>
	#third {
		width:1400px;
		height:400px;
		margin:auto;
		background:#E0FFFF;
	}
	#fourth {
		width:1000px;
		height:150px;
		margin:auto;
		/* margin-top:50px; */
		background:#F0F8FF;
	}
	#fourth > div {
		width:327px;
		height:150px;
		/* border:1px solid pink; */
		display:inline-block;
	}
</style>

	<div id="third">
		<div id="box"><img src=""></div>
	</div>
	<div id="fourth">
		<div id="gongji">
			<div>공지사항</div>
			<ul class="list">
				<li><a href="#">[일반] 공지사항2</a></li>
				<li><a href="#">[긴급] 공지사항1</a></li>
			</ul>
		</div>
		<div id="board">
			<div>자유게시판</div>
			<ul class="list">
				<li><a href="#">자유2</a></li>
				<li><a href="#">자유1</a></li>
			</ul>
		</div>
		<div id="qna">
			<div>Q&A</div>
			<ul class="list">
				<li><a href="#">Q&A 2</a></li>
				<li><a href="#">Q&A 1</a></li>
			</ul>
		</div>
	</div>
	
<c:import url="./bottom.jsp" />