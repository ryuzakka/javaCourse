<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${userid != 'admin'}">
	<c:redirect url="list.jsp" />
</c:if>

<%@ page import="dao.GongjiDao" %>
<%
	GongjiDao dao = new GongjiDao();
	dao.delete(request, response);
%>