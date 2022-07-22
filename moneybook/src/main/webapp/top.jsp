<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="../etc/moneybook.css" />
	<script src="../etc/moneybook.js"></script>
	<title>Moneybook</title>
	<script>
		function view(n) {
			document.getElementsByClassName('sub')[n].style.visibility = "visible";
		}
		function hide(n) {
			document.getElementsByClassName('sub')[n].style.visibility = "hidden";
		}
	</script>
	<style>
		#noti {
			margin:10px 0px;
		}
		#noti table tr {
			text-align:center;
		}
	</style>
</head>
<body>

	<div id="first"> <span id="today"></span>오늘은 무엇을 먹을까요~?<span id="closeBtn"></span></div>
	<div id="second">
		<div id="left">
			<a href="../main/index.jsp"><img src="../img/logo.png" width="35px"></a>
			Madu-Java-Class
		</div>
		<div id="right">
			<ul class="menu">
				<li id="menu">
					<div><a href="../lunch/list.jsp">맛집리스트</a></div>
				</li>
				<li id="menu">
					<div>나의소비</div>
				</li>
				<li id="menu" onmouseover="view(0)" onmouseout="hide(0)">
					<div>커뮤니티</div>
					<ul class="sub">
						<li><a href="../gongji/list.jsp">공지사항</a></li>
						<li> 문의하기 </li>
					</ul>
				</li>
				
				<li id="menu" onmouseover="view(1)" onmouseout="hide(1)">
					<c:if test="${userid == null}">
						<div>회원서비스</div>
						<ul class="sub">
							<li><a href="../member/login.jsp">로그인</a></li>
							<li><a href="../member/signup.jsp">회원가입</a></li>
						</ul>
					</c:if>
					<c:if test="${userid != null}">
						<div>${name} 님</div>
						<ul class="sub">
							<li><a href="../member/member_info.jsp">회원정보</a></li>
							<li><a href="../member/logout.jsp">로그아웃</a></li>
						</ul>
					</c:if>
				</li>
			</ul>
		</div>
	</div>
	<div id="noti">
		<div id="notiTitle" align="center">알립니다.</div>
		<table width="400" align="center" border="0">
			<c:forEach items="${notice}" var="noti">
				<tr><td><a href="../gongji/content.jsp?id=${noti.id}">${noti.title}</a></td></tr>
			</c:forEach>
		</table>
	</div>
	<hr>
	