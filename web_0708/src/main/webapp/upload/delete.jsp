<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="upload.UploadDao" %>
<%
	UploadDao dao = new UploadDao();

	dao.delete(request, response);
%>