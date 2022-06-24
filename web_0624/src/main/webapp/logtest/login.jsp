<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>0624logtest/login</title>
</head>
<body>	<!-- 0624logtest/login -->
	
	<div align="center" style="margin-top:90px">
		<h2>누구냐 넌?</h2>
		<form method="post" action="login_ok.jsp">
			ID	<input type="text" name="userid" placeholder="아이디를 입력"> <p>
			PW	<input type="password" name="pwd" placeholder="비밀번호 입력"> <p>
			<input type="submit" value="로 그 인">
		</form>
		<a href="main.jsp"><input type="button" value="홈으로"></a>
	</div>
	
</body>
</html>