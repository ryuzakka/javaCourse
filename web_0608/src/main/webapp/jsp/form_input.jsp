<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>form input</title>
</head>
<body>
	<!-- 다양한 폼태그 -->
	<form method="post" action="form_input_ok.jsp">
		
		<!-- 키보드로 입력 -->
		<input type="text" name="name" placeholder="이름"><p>
		<input type="password" name="pwd" placeholder="비밀번호"><p>
		<textarea cols="40" rows="5" name="soge" placeholder="소개"></textarea><p>
		
		<!-- 마우스로 입력 -->
		<strong>성별</strong>
		<input type="radio" name="sung" value="남자">남자
		<input type="radio" name="sung" value="여자">여자
		<input type="radio" name="sung" value="선택안함">선택안함 <p>
		
		<strong>취미</strong>
		<input type="checkbox" name="hobby" value="여행">여행
		<input type="checkbox" name="hobby" value="독서">독서
		<input type="checkbox" name="hobby" value="낚시">낚시
		<input type="checkbox" name="hobby" value="요리">요리
		<input type="checkbox" name="hobby" value="없음">없음<p>
		
		<strong>지역</strong>
		<select name="area">
			<option value="0"> 서울 </option>
			<option value="1"> 경기 </option>
			<option value="2"> 인천 </option>
			<option value="3"> 강원 </option>
			<option value="4"> 충청 </option>
			<option value="5"> 전라 </option>
			<option value="6"> 경상 </option>
			<option value="7"> 제주 </option>
		</select><p>
		
		<input type="submit" value="완료">
		
	</form>
</body>
</html>