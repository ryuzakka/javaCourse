<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <style>
    #first {
      width:1000px;
      height:40px;
      background:purple;
      color:white;
      text-align:center;
      margin:auto;
    }
    #second {
      width:1000px;
      height:40px;
      text-align:right;
      margin:auto;
    }
  </style>
</head>
<body> <!-- main.jsp : 첫 페이지 -->
	<div id="first"> 어서 오세요!! <%=session.getAttribute("name") %>님, 즐거운 날이에요 </div>
  
	<div id="second"> 
	<% if(session.getAttribute("userid") == null) { %>
		<a href="login.jsp">로그인</a> 회원가입  
	<% } else { %>   
		<a href="logout.jsp">로그아웃</a>
		고객센터 <p>
		<a href="board/list.jsp">게시판</a>
	<% } %>  
	</div>
	
</body>
</html>
