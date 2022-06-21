<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>integrated_board/rewrite</title>
</head>
<body>	<!-- integrated_board/rewrite -->

	<form method="post" action="rewrite_proc.jsp">
		<table width="500" align="center">
			<caption><h2>게시판 글쓰기</h2></caption>
			<!-- <tr>
				<td> 비밀글 </td>
				<td> <input type="checkbox" name="secret"> 체크하면 비밀글로 설정됩니다. </td>
			</tr> -->
			
			<!-- 추가 영역 -->
			<input type="hidden" name="grp" value="<%=request.getParameter("grp")%>">
			<input type="hidden" name="depth" value="<%=request.getParameter("depth")%>">
			<input type="hidden" name="seq" value="<%=request.getParameter("seq")%>">
						
			<tr>
				<td> 제 목 </td>
				<td> <input type="text" name="title" placeholder="제목을 입력하세요." required> </td>
			</tr>
			<tr>
				<td> 이 름 </td>
				<td> <input type="text" name="writer" placeholder="이름을 입력하세요." required> </td>
			</tr>
			<tr>
				<td> 비밀번호 </td>
				<td> <input type="password" name="pwd" placeholder="비밀번호를 입력하세요." required> </td>
			</tr>
			<tr>
				<td> 내 용 </td>
				<td> <textarea cols="30" rows="5" name="content"></textarea> </td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="답글 작성">
					<a href="list.jsp"><input type="button" value="목록"></a>
				</td>
			</tr>
		</table>
	</form>
	
</body>
</html>