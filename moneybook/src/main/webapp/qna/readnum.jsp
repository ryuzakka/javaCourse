<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.QnaDao" %>
<%
	QnaDao dao = new QnaDao();
	dao.readnum(request, response);
%>