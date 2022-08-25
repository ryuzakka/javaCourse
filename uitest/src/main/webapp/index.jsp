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
	#third #box {
		width:1400px;
		height:400px;
		overflow:hidden;
	}
	#third #inner {
		width:5600px;
		height:400px;
	}
	#third #inner img {
		width:1400px;
		height:400px;
	}
	#fourth {
		width:1000px;
		height:150px;
		margin:auto;
		/* display:flex; */
		border-spacing:0px;
		/* margin-top:50px; */
		background:#F0F8FF;
	}
	#fourth article {
		width:329px;
		height:150px;
		margin:0;
		padding:0;
		/* border:1px solid pink; */
		display:inline-block;
	}
	#fourth #gongji {
		background:olive;
	}
	#fourth #board {
		background:bluesky;
	}
	#fourth #qna {
		background:pink;
	}
</style>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
	$(function(){
		// 슬라이드 그림 움직이기
		setInterval(function(){
			$("#box #inner").animate({
				marginLeft:"-1400px"
			},1000,function(){
				$("#box #inner").css("margin-left","0px");
				$("#box #inner img").eq(0).insertAfter($("#box #inner img").eq(4));
			});
		},3000);
	});
</script>

	<div id="third">
		<div id="box">
			<div id="inner">
				<img src="img/1.png"><img src="img/2.png"><img src="img/3.png"><img src="img/4.png"><img src="img/5.png">
			</div>
		</div>
	</div>
	<div id="fourth">
		<article id="gongji">
			<div>공지사항</div>
			<ul class="list">
				<li><a href="#">[일반] 공지사항2</a></li>
				<li><a href="#">[긴급] 공지사항1</a></li>
			</ul>
		</article>
		<article id="board">
			<div>자유게시판</div>
			<ul class="list">
				<li><a href="#">자유2</a></li>
				<li><a href="#">자유1</a></li>
			</ul>
		</article>
		<article id="qna">
			<div>Q&A</div>
			<ul class="list">
				<li><a href="#">Q&A 2</a></li>
				<li><a href="#">Q&A 1</a></li>
			</ul>
		</article>
	</div>
	
<c:import url="./bottom.jsp" />