<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>input : member</title>
</head>
<body>

	<form method="post" action="input_ok.jsp">
		<span>* 입력페이지 *</span><p>
		번호 <input type="text" name="bunho" placeholder="번호"><p>
		이름 <input type="text" name="name" placeholder="이름"><p>
		연락처 <input type="text" name="phone" placeholder="연락처"><p>
		나이 <input type="text" name="age" placeholder="나이"><p>
		<input type="submit" value="등록">
	</form>
	
</body>
</html>