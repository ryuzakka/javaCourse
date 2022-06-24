<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	// sesseion_start.jsp
	
	//	session : 브라우저마다 발생하는 영역	
	//	session 영역에 브라우저마다 접근하는 사용자의 구분할 수 있는 유일한 값을 이용하여 처리
	
	session.setAttribute("userid", "honey");

%>
