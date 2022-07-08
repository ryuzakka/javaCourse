<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- 0708/upload/write_ok.jsp -->

<%@ page import="upload.UploadDao" %>
<%
	UploadDao dao = new UploadDao();
	
	dao.write(request, response);
%>
