<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- member_find.jsp -->
<style>
	#section {
		display:table;
		width:800px;
		height:280px;
		margin:auto;
		margin-top:80px;
		text-align:center;
	}
	#section #idSearch {
		display:table-cell;
	}
	#section #idSearch #idErr {
		font-size:11px;
		color:red;
	}
	#section #pwdSearch {
		display:table-cell;
	}
	#section #pwdSearch #pwdErr {
		font-size:11px;
		color:red;
	}
</style>
<c:import url="../top.jsp" />

	<div id="section">
		<div id="idSearch">
			<form id="idsearchform" name="idsearchform" method="post" action="userid_search.jsp">
				<h3>아이디 찾기</h3>
				<input type="text" name="name" placeholder="이름" > <p>
				<input type="text" name="phone" placeholder="연락처" > <p>
				<!-- <input type="button" value="아이디 찾기" onclick="userid_search(); return false"> -->
				<input type="submit" value="아이디 찾기" ><p>
				<% if(request.getParameter("idchk") == null) { %>
				<% } else if(request.getParameter("idchk").equals("0")) { %>
				<span id="idErr">일치하는 정보가 없습니다.</span><p>
				<a href="member_find.jsp"><input type="button" value="다시찾기"></a>
				<% } else { %>
				<span>ID : <%=request.getParameter("userid")%></span>
				<% } %>
			</form>
		</div>
		<div id="pwdSearch">
			<form method="post" action="pwd_search.jsp">
				<h3>비밀번호 찾기</h3>
				<input type="text" name="userid" placeholder="아이디"> <p>
				<input type="text" name="name" placeholder="이름"> <p>
				<input type="text" name="phone" placeholder="연락처"> <p>
				<input type="submit" value="비밀번호 찾기"><p>
				<% if(request.getParameter("pwdchk") == null) { %>
				<% } else if(request.getParameter("pwdchk").equals("0")) { %>
				<span id="pwdErr">일치하는 정보가 없습니다.</span><p>
				<a href="member_find.jsp"><input type="button" value="다시찾기"></a>
				<% } else { %>
				<span>PW : <%=request.getParameter("pwd")%></span>
				<% } %>
			</form>
		</div>
	</div>

<c:import url="../bottom.jsp" />