<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="board_page.BoardDao" %>
<%
	BoardDao dao = new BoardDao();
	
	int id = Integer.parseInt(request.getParameter("id"));
	String pwd = request.getParameter("pwd");
	
	if(dao.pwdcheck(id,pwd)) {
		response.sendRedirect("readnum.jsp?id=" + id);
	} else {
		response.sendRedirect("list.jsp");
	}
	
%>