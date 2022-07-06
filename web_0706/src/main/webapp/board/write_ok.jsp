<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- form의 값을 받아와서 테이블에 저장 후 list로 이동 -->

<%@ page import="board.BoardDao" %>
<% 
	BoardDao dao = new BoardDao();
	
	dao.write(request);
	dao.close();
	dao.redirect(response, "list.jsp");
%>