<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="board.BoardDao" %>
<%
	BoardDao dao = new BoardDao();
	
	dao.update(request);
	dao.close();
	
	int id = Integer.parseInt(request.getParameter("id"));
	dao.redirect(response, "content.jsp", id);
%>