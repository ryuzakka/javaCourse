<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	// server_cookie_del.jsp
	
	Cookie oreo = new Cookie("name", "");
	oreo.setMaxAge(0);
	
	response.addCookie(oreo);
	
	response.sendRedirect("server_cookie_view.jsp");
%>