<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.GongjiDao" %>
<%
	GongjiDao dao = new GongjiDao();
	dao.update(request, response);
%>