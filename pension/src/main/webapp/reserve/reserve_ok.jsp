<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.ReserveDao" %>
<%
	ReserveDao dao = new ReserveDao();
	dao.reserve_ok(request,response,session);
%>