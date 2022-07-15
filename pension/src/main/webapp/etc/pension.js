/* pension.js */

// member_input.jsp => 회원가입 때 아이디 중복체크
function userid_check(my) {
	var id = my.value;
	console.log(id);
	
	var chk = new XMLHttpRequest();
	chk.open("get", "userid_check.jsp?userid="+id);
	chk.send();
	
	chk.onreadystatechange = function(){
		if(chk.readyState == 4) {
			
			//console.log(chk.responseText.trim());
			// 사용가능하면 = 0
			if(chk.responseText.trim() == 0) {
				document.getElementById('idError').innerText = "사용 가능한 아이디";
			} else {
				document.getElementById('idError').innerText = "사용 불가능한 아이디";
			}
		}
	}
}

// member_input.jsp => 회원가입 때 비밀번호 확인 체크
function pwd_check(pwd2) {
	var pwd = document.memeberInputForm.pwd.value;
	
	if(pwd == pwd2) {
		document.getElementById('pwdError').innerText = "비밀번호가 일치합니다";
		//document.getElementById('pwdError_').innerText = "비밀번호가 일치합니다";
	} else {
		document.getElementById('pwdError').innerText = "비밀번호가 일치하지 않습니다.";
		//document.getElementById('pwdError_').innerText = "비밀번호가 일치하지 않습니다.";
	}
}

// member_input.jsp => 회원가입 때 전화번호 숫자만 입력하도록
function phone_check(my) {
	my.value = my.value.replace(/[^0-9]/g, "");
}

// member_input.jsp => 회원가입 때 이메일 형식 체크
function mail_check(my) {
	var mail = my.value;

	//console.log(mail.length);
	//console.log(mail.indexOf('@'));
	console.log(mail.indexOf('.'));
	console.log(mail.lastIndexOf('@'));
	
	if((mail.indexOf('@')>0) && (mail.indexOf('.')>0)) {
		document.getElementById("mailError").innerText = "이메일 형식에 부합합니다.";
	} else {
		document.getElementById("mailError").innerText = "이메일 형식이 잘못됐습니다.";
	}
}




