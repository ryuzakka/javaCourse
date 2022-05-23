<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>	<!-- key.jsp -->
		<!-- 크기는 size -->
		이름 <input type="text" size="7" maxlength="7"> <p>
		나이 <input type="text" size="3" maxlength="3"> <p>
		주소 <input type="text" size="50" maxlength="50"> <p>
		비번 <input type="password" size="10" maxlength="10"> <p>
		<textarea cols="40" rows="10"></textarea>
		<hr>
		
		<!-- 글자수 제한 -->
		생년월일 <input type="text" size="8" maxlength="8"> <p>
		구매후기 <textarea cols="40" rows="10" maxlength="100"></textarea>
		<hr>
		
		<!-- 입력폼 내에 글자 출력 -->
		<input type="text" placeholder="아이디"> <p>
		<input type="password" placeholder="비밀번호"> <p>
		
		<!-- 사용불가 -->
		<input type="text" value="외부에서 값을 가져왔지롱" disabled> <p>
		<input type="checkbox" disabled> <p>
		
		<!-- 미리 선택되어서 보이기 -->
		<input type="radio" name="place" checked> 서울
		<input type="radio" name="place"> 경기
		<input type="radio" name="place"> 제주 <p>
		<select>
			<option>통신사</option>
			<option>SK</option>
			<option selected>KT</option>
			<option>LG</option>
		</select>
	</body>
</html>