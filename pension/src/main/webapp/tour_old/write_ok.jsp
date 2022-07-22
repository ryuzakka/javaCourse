<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.TourDao_old" %>
<%
TourDao_old dao = new TourDao_old();
	dao.write(request, response, session);
%>