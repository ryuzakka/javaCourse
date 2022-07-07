<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="board_page.BoardDao" %>
<% 
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	
	BoardDao dao = new BoardDao();
	
	int n = dao.pwdajax(id, pwd);
	out.print(n);
%>