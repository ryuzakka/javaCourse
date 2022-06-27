<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인</title>
<style>
	#first {
		width:1000px;
		height:40px;
		color:white;
		background:purple;
		text-align:center;
		margin:auto;
		padding-top:16px;
	}
	#second {
		width:1000px;
		height:30px;
		text-align:right;
		margin:auto;
	}
</style>
</head>
<body>
<%	if(session.getAttribute("userid") == null) { %>
	<div id="first"> 안녕하세요, 반갑습니다. </div>
	<div id="second">
		<a href="login.jsp">로그인</a>&nbsp;
		회원가입&nbsp;
		고객센터
	</div>
<%	} else { %>
	<div id="first"> 좋은 아침입니다! 오늘 하루도 파이팅 합시다! </div>
	<div id="second">
		<span>반갑습니다. <%=session.getAttribute("username")%>님.</span>&nbsp;&nbsp;&nbsp;
		<a href="logout.jsp">로그아웃</a>&nbsp;
		고객센터
	</div>
<%	} %>
</body>
</html>
