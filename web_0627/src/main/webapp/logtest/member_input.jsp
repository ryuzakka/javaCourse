<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<style>
	body {
		margin-top:70px;
	}
	td {
		padding-bottom:20px;
	}
	td:first-child {
		text-align:right;
	}
	td:nth-child(2) {
		padding-left:20px;
	}
	#pwdWarn {
		font-size:12px;
	}
	#idWarn {
		font-size:12px;
	}
</style>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	function juso_search()  // 우편번호 버튼 클릭시 호출 함수명
	{
	  new daum.Postcode({
	      oncomplete: function(data) {
	          if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
	              addr = data.roadAddress;
	          } else { // 사용자가 지번 주소를 선택했을 경우(J)
	              addr = data.jibunAddress;
	          }
	
	          // 우편번호와 주소 정보를 해당 필드에 넣는다.
	          document.dhr.zip.value = data.zonecode; // 우편번호
	          document.dhr.juso1.value = addr;  // 주소
	          // 커서를 상세주소 필드로 이동한다.
	          document.dhr.juso2.focus();
	      }
	  }).open();
	}
	
	function pwdCheck(my) {
		var pwd = document.dhr.pwd.value;
		var warn = document.getElementById("pwdWarn");
		
		if(pwd != my.value){
			my.focus();
			warn.innerText = "비밀번호가 일치하지 않습니다.";
			warn.style.color = "red";
			return false;
		}
		else {
			warn.innerText = "비밀번호가 일치합니다.";
			warn.style.color = "green";
			return true;
		}
	}
	
	function phoneCheck(my) {
		my.value = my.value.replace(/[^0-9]/g, "");
		if(my.value.length < 11)
			return false;
	}
	
	function useridCheck() {
		var id = document.dhr.userid.value;
		var warn = document.getElementById("idWarn");
		/* old 버전 */
//		location = "userid_check_old.jsp?userid=" + id;
		
		if(id.length == 0) {
			warn.innerText = "아이디를 입력하세요.";
			warn.style.color = "red";
		}
		else if(id.length > 6) {
			warn.innerText = "6글자를 초과했습니다.";
			warn.style.color = "orange";
		}
		else {
			/* 최근 버전 */
			var chk = new XMLHttpRequest();
			chk.open("get", "userid_check.jsp?userid="+id);		// 어떤 문서로 어떻게 갈 것이냐
			chk.send();		// 전송 => userid_check.jsp 문서가 백그라운드에서 작동함
			
			// AJAX로 호출 후 회신 대기
			chk.onreadystatechange = function() {
				if(chk.readyState == 4) {	// 호출한 jsp가 모든 동작을 완료
					var num = chk.responseText.trim();
					
					// 완료 후에 출력내용을 가져온다.
					if(num == 0) { // 0 = 사용 가능
						warn.style.color = "green";
						warn.innerText = "사용 가능한 아이디 입니다.";
						cnt = 2;	// 중복체크를 했는지 확인을 위한 변수
					} else {	// 1 = 사용 불가
						warn.style.color = "red";
						warn.innerText = "사용 불가능한 아이디 입니다.";
						cnt = 1;
					}
				}
			}
		}
	}
	var cnt = 1;	// 중복체크를 했는지 확인을 위한 변수
	
	function subCheck() {
		var pwd = document.dhr.pwd;
		var pwd2 = document.dhr.pwd2;
		var phone = document.dhr.phone;
		
		pwdCheck(pwd2);
		phoneCheck(phone);
		
		if(cnt == 1) {
			alert("중복체크 하세요.")
			return false;
		}
		else if(pwd.value != pwd2.value)
			return false;
	}
</script>

</head>
<body>	<!-- 0627/member_input -->
	
	<form name="dhr" method="post" action="member_input_ok.jsp" onsubmit="return subCheck()">
		<table width="500" align="center">
			<caption><h2>가입 양식</h2></caption>
			<tr>
				<td> 사용자 아이디 </td>
				<td>
					<input type="text" name="userid" placeholder="아이디" required>
					<input type="button" value="중복체크" onclick="return useridCheck()"><br>
					<span id="idWarn"></span>
				</td>
			</tr>
			<tr>
				<td> 비밀번호 </td>
				<td> <input type="password" name="pwd" placeholder="비밀번호"> </td>
			</tr>
			<tr>
				<td> 비밀번호 확인 </td>
				<td>
					<input type="password" name="pwd2" placeholder="비밀번호 확인" onkeyup="return pwdCheck(this)"><br>
					<span id="pwdWarn"></span>
				</td>
			</tr>
			<tr>
				<td> 이름 </td>
				<td> <input type="text" name="name" placeholder="이름"> </td>
			</tr>
			<tr>
				<td> 연락처 </td>
				<td> <input type="text" name="phone" placeholder="연락처" onkeyup="return phoneCheck(this)" maxlength="11"> </td>
			</tr>
			<tr>
				<td> 우편번호 </td>
				<td>
					<input type="text" name="zip" placeholder="우편번호" maxlength="5" size="6">
					<input type="button" value="찾기" onclick="juso_search()">
				</td>
			</tr>
			<tr>
				<td> 주소 </td>
				<td> <input type="text" name="juso1" placeholder="집 주소" size="30"> </td>
			</tr>
			<tr>
				<td> 상세주소 </td>
				<td> <input type="text" name="juso2" placeholder="상세주소" size="30"> </td>
			</tr>
			<tr>
				<td></td>
				<td> <input type="submit" value="회원가입 하기"> </td>
			</tr>
		</table>
	</form>
	
</body>
</html>