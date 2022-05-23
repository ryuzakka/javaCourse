<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<!-- form.jsp -->
		<!-- 사용자로부터 키보드, 마우스로 값을 입력받는 태그 -->
		<form>
			<!-- 키보드로 입력하는 양식 
				1. input (text, password)
				2. textarea
			-->
			<input type="text" placeholder="ID를 입력하세요"> <p>
			<input type="password" placeholder="비밀번호를 입력하세요"> <p>
			<textarea cols="30" rows="4"></textarea> <p>
			
			<!-- 마우스로 입력하는 양식
				1. input (radio, checkbox)
				2. select
			 -->
			 <input type="radio" name="food">
			 <input type="radio" name="food">
			 <input type="radio" name="food">
			 <input type="radio" name="food">
			 <p>
			 <input type="checkbox" name="hobby">
			 <input type="checkbox" name="hobby">
			 <input type="checkbox" name="hobby">
			 <input type="checkbox" name="hobby">
			 <p>
			 <select>
			 	<option> 선택 </option>
			 	<option> 짜장 </option>
			 	<option> 짬뽕 </option>
			 	<option> 탕수육 </option>
			 </select> <p>
			 
			 <!-- 파일선택 -->
			 <input type="file"> <p>
			 
			 <!-- 버튼 -->
			 <input type="button" value="클릭"> <p>	<!-- input-button타입은 주로 자바스크립트 함수 호출할 때 사용 -->
			 <input type="submit" value="전송"> <p>	<!-- 현재 사용자가 입력한 내용을 서버로 전송 -->
			 <input type="image" src="Penguins.jpg" width="150"> <p>
			 <input type="reset" value="취소"> <p>	<!-- 현재 폼에 입력된 값들을 초기화 -->
			 
			 <!-- 브라우저에 표시되지 않는 양식 -->
			 <input type="hidden" value="ddd"> <p> <!-- 페이지 이동 시 값을 전달하기 위해 많이 사용함 -->
			 
		</form>
	</body>
</html>