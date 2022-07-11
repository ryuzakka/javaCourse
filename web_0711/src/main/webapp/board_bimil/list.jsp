<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="board_page.BoardDao" %>
<%@ page import="java.sql.ResultSet" %>
<%
	BoardDao dao = new BoardDao();
	ResultSet rs = dao.list(request);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>list</title>
<style>
	a {
		text-decoration:none;
		color:black;
	}
	a:hover {
		color:red;
	}
	#bimil_tag {
		visibility:hidden;
		position:absolute;
		background:yellow;
		opacity:.9;
		width:130px;
		height:25px;
	}
</style>
<script>
	function bimil(id) {
		var x = event.pageX;
		var y = event.pageY;
		var tag = document.getElementById('bimil_tag');
		
		tag.style.visibility = "visible";
		tag.style.left = x+"px";
		tag.style.top = y+"px";
		
		document.bimil_tag_form.id.value = id;
	}
</script>
</head>
<body>	<!-- 0706/board/list.jsp -->
	
	<table width="600" align="center" border="1">
		<caption>
			<h2>게시판</h2>
			<h4 align="right"><a href="write.jsp"><input type="button" value="글쓰기"></a></h4>
		</caption>
		<tr>
			<td> 제 목 </td>
			<td> 작성자 </td>
			<td> 조회수 </td>
			<td> 작성일 </td>
		</tr>
	<%	while(rs.next()) { %>
		<tr>
			<td>
			<% if(rs.getInt("secret") == 0) { %> 
				<a href="readnum.jsp?id=<%=rs.getInt("id")%>"><%=rs.getString("title") %></a>
			<% } else { %>
				<a href="#" onclick="bimil(<%=rs.getInt("id")%>)"><%=rs.getString("title") %></a>
			<% } %>
			</td>
			<td> <%=rs.getString("writer") %> </td>
			<td> <%=rs.getString("viewcnt") %> </td>
			<td> <%=rs.getString("writeday") %> </td>
		</tr>
	<%	} %>
	</table>
	
	<div id="bimil_tag">
	<form name="bimil_tag_form" method="post" action="bimil_check.jsp">
		<input type="hidden" name="id" value="">
		<input type="password" name="pwd" size="6">
		<input type="submit" value="확인">
	</form>
	</div>
	
<!-- 페이지 영역 시작 -->
	<div align="center" style="margin:20px 0px 10px 0px">
	<%
		int pstart = dao.pstart(request);
		int pend = pstart + 9;
		
		if(pend > dao.pagetotal()) {
			pend = dao.pagetotal();
		}
	%>
<!-- 첫 1page로 이동 -->
		<input type="button" value="첫페이지로" onclick="javascript:location='list.jsp'">
		
<!-- 이전 10page -->
	<% if(pstart > 1){ %>
		<a href="list.jsp?page=<%=pstart-1%>"> <<</a>
	<% } %>
	
<!-- 페이지 번호 출력 -->
	<%
		for(int i=pstart; i<=pend; i++) {
			if(i == dao.getpage(request)) {
	%>
		<span style="color:white;background:red"><%=i%></span>
		<%	} else { %>
		<span> <a href="list.jsp?page=<%=i%>"><%=i%></a> </span>
	<%		}
		}
	%>
	
<!-- 다음 10page -->
	<% if(pend < dao.pagetotal()) { %>
		<a href="list.jsp?page=<%=pend+1%>"> >></a>
	<% } %>
	
<!-- 끝 page로 이동 -->
		<input type="button" value="끝으로" onclick="javascript:location='list.jsp?page=<%=dao.pagetotal()%>'">
	</div>
	
<!-- 현재page/총page -->
	<div align="center"> <%=dao.getpage(request) %> / <%=dao.pagetotal() %></div>
	
</body>
</html>
<%
	rs.close();
	dao.close();
%>