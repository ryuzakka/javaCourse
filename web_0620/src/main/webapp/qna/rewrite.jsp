<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>0620qna/rewrite</title>
</head>
<body>	<!-- 0620qna/rewrite -->
	
	<form method="post" action="rewrite_ok.jsp">
	<table width="400" align="center">
		<caption><h2>QnA 게시판</h2></caption>
		
		<input type="hidden" name="grp" value="<%=request.getParameter("grp")%>">
		<input type="hidden" name="depth" value="<%=request.getParameter("depth")%>">
		<input type="hidden" name="seq" value="<%=request.getParameter("seq")%>">
		
		<tr>
			<td align="center"> 제 목 </td>
			<td> <input type="text" name="title" size="40"> </td>
		</tr>
		<tr>
			<td align="center"> 이 름 </td>
			<td> <input type="text" name="name" size="10"> </td>
		</tr>
		<tr>
			<td align="center"> 내 용 </td>
			<td> <textarea cols="42" rows="8" name="content"></textarea> </td>
		</tr>
		<tr>
			<td align="center"> 비밀번호 </td>
			<td> <input type="password" name="pwd" size="6"> </td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="submit" value="작성">
				<a href="list.jsp"><input type="button" value="목록"></a>
			</td>
		</tr>
	</table>
	</form>
	
</body>
</html>