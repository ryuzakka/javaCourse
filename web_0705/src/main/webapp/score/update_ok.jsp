<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="score.Sungjuk_Dao" %>
<%
	Sungjuk_Dao dao = new Sungjuk_Dao();
	
	dao.update(request);
	dao.close();
	dao.send(response, "list.jsp");
%>