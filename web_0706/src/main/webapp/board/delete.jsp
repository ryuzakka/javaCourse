<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="board.BoardDao" %>
<%
	BoardDao dao = new BoardDao();
	
	request.setCharacterEncoding("utf-8");
	
	dao.delete(request, response);
%>