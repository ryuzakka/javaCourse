<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="login.BoardDao" %>
<% 
	BoardDao dao = new BoardDao();
	dao.checkSession(session, response);
	dao.update(request, response);
%>