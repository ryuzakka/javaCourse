<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>  <!-- login.jsp -->
 <div align="center">
  <form method="post" action="login_ok.jsp">
   아이디 <input type="text" name="userid"> <p>
   비밀번호 <input type="password" name="pwd"> <p>
   <input type="submit" value="로그인">
   <input type="button" value="메인으로" onclick="javascript:location='main.jsp'";>
  </form>
 </div>
</body>
</html>