<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>0624/object</title>
</head>
<body>	<!-- 0624/object.jsp -->
	
	<!-- 
		jsp 내장객체 => request, pageContext, session, application
		변수를 만드는 방법 => setter, getter를 통해 사용
	 -->
	<%	// (변수,값)
		request.setAttribute("name", "홍길동"); 
			// 요청을 주고 받는 문서간. 현재 문서에서 볼 수 있음. 요청을 하는 이전 문서의 값을 받아올 수 있음
		pageContext.setAttribute("name", "배트맨");
		session.setAttribute("name", "슈퍼맨");
			// 브라우저당 발생되는 영역. 동일한 브라우저일 경우 중복됨
			// 사용자마다 세션은 다름. 세션은 공유가 안됨. 
			// 사용자가 접속하면 세션객체가 생성됨. 로그인하면 해당 세션에 속성을 부여함.
		application.setAttribute("name", "앤트맨");
			// 어플리케이션당 발생되는 영역. 웹서버가 실행되면 생성되는 객체.
			// 공공의 정보를 노출하는 데에 주로 사용됨.
	%>
	
	<%
		out.print(request.getAttribute("name"));	// request영역에 name이라는 변수의 값을 가져와라
		out.print(pageContext.getAttribute("name"));
		out.print(session.getAttribute("name"));
		out.print(application.getAttribute("name"));
	%>
	
</body>
</html>