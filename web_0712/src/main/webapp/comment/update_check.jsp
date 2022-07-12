<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="comment.BoardDao" %>
<%
	BoardDao dao = new BoardDao();
	dao.updatePwdcheck(request, response);
%>