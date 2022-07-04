<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="member.Member_Dao" %>
<%
	Member_Dao mdao = new Member_Dao();
	
	mdao.update(request);
	mdao.close();
	
	response.sendRedirect("list.jsp");
%>