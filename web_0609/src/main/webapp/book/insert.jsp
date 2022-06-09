<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>INSERT : book</title>
</head>
<body>
	<form method="post" action="insert_ok.jsp">
		<h2> 도서 등록 </h2>
		<!-- <input type="hidden" name="bookid" placeholder="번호"> <p> -->
		<input type="text" name="booktitle" placeholder="책제목" maxlength="100"> <p>
		<input type="text" name="writer" placeholder="저자" maxlength="50"> <p>
		<input type="text" name="cost" placeholder="책값"> <p>
		<input type="text" name="pubdate" placeholder="출간일"> <p>
		<input type="submit" value="저장">
		<a href="select.jsp">뒤로가기</a>
	</form>
</body>
</html>