<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.LunchDao" %>
<%
	LunchDao dao = new LunchDao();
	dao.update(request, response);
%>