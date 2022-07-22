<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.CommentDao" %>
<%
	CommentDao dao = new CommentDao();
	dao.delete(request, response);
%>