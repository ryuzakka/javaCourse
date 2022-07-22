<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.MemberDao" %>
<%
	MemberDao dao = new MemberDao();
	dao.memberUpdate(request, response);
%>