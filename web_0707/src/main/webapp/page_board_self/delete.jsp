<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="board_page.BoardDao_Self" %>
<%
	BoardDao_Self dao = new BoardDao_Self();
	
	request.setCharacterEncoding("utf-8");
	
	dao.delete(request, response);
%>