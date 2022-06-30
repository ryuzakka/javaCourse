<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	function userid_check() {
		// ID중복체크
		var chk = new XMLHttpRequest;
		chk.open("post", "userid_check.jsp");
		chk.send();
		
		chk.onreadyStatechange = function() {
			if(chk.readyState == 4) {
				if(chk.responseText.trim() == 1) {
					alert("사용 가능한 아이디 입니다.");
				} else {
					alert("사용 불가한 아이디 입니다.");
				}
			}
		}
	}
	
	function pwd_check() {
		// 비밀번호 확인
		var pwd1 = document.signupForm.pwd.value;
		var pwd2 = document.signupForm.pwd2.value;
		
		if(pwd1 != pwd2) {
			document.getElementById('pwdcheck').innerText = "비밀번호가 일치하지 않습니다.";
			document.getElementById('pwdcheck').style.color = "red";
		} else {
			document.getElementById('pwdcheck').innerText = "비밀번호가 일치합니다.";
			document.getElementById('pwdcheck').style.color = "green";
		}
	}
	
	function addr_search() {
		// 우편번호와 주소 찾기
		new daum.Postcode({
			oncomplete: function(data) {
				if (data.userSelectedType === 'R') {
					addr = data.roadAddress;
				} else {
					addr = data.jibunAddress;
				}

				document.signupForm.zip.value = data.zonecode;
				document.signupForm.addr1.value = addr;
				document.signupForm.addr2.focus();
			}
		}).open();
	}
</script>
</head>
<body>
	
	<form name="signupForm" method="post" action="member_input.jsp">
		<table align="center">
			<caption><h2>회원가입</h2></caption>
			<tr>
				<td> 아이디 </td>
				<td>
					<input type="text" name="userid" placeholder="아이디를 입력하세요." required>
					<input type="button" value="중복체크" onclick="userid_check()">
				</td>
			</tr>
			<tr>
				<td> 이 름 </td>
				<td> <input type="text" name="name" placeholder="이름을 입력하세요." required> </td>
			</tr>
			<tr>
				<td> 비밀번호 </td>
				<td> <input type="password" name="pwd" placeholder="비밀번호를 입력하세요." required> </td>
			</tr>
			<tr>
				<td> 비밀번호 확인 </td>
				<td>
					<input type="password" name="pwd2" placeholder="비밀번호를 재입력하세요." onkeyup="pwd_check()" required>
					<span id="pwdcheck"></span>
				</td>
			</tr>
			<tr>
				<td>
					<span>주 소</span>
				</td>
				<td>
					<input type="text" name="zip" placeholder="우편번호" size="5">
					<input type="button" value="주소 찾기" onclick="addr_search()"><br>
					<input type="text" name="addr1" placeholder="주소 입력" size="30"><br>
					<input type="text" name="addr2" placeholder="상세 주소 입력" size="30">
				</td>
			</tr>
			<tr>
				<td> 이메일 </td>
				<td> <input type="text" name="email" placeholder="이메일 주소"  size="30"> </td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="가입하기">
				</td>
			</tr>
		</table>
	</form>
	
</body>
</html>