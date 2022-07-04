<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- 0704/member_input_ok.jsp -->

<%@ page import="member.Member_Dao" %>
<%
	Member_Dao mdao = new Member_Dao();
	// 여기서만 request를 통해 이전 문서에 폼의 값을 가져올 수 있음
	// 현재 문서의 request객체를 매개변수로 전달 가능하다.
	mdao.insert(request);
	mdao.close();
	
	response.sendRedirect("list.jsp");
%>
