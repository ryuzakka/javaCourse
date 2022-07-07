<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="board_page.BoardDao_Self" %>
<% 
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	
	BoardDao_Self dao = new BoardDao_Self();
	
	out.print(dao.pwdcheck(id, pwd));
%>