<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="login.LoginDao" %>
<%
	// 아이디, 비밀번호를 가져와서 회원체크
	// 회원이면 세션영역에 값을 저장(아이디, 이름)
	// 아니면 다시 로그인 문서로 이동
	
	LoginDao dao = new LoginDao();
	
	dao.login_ok(request, session, response);
%>