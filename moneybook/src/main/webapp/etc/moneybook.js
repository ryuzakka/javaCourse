
// member_input.jsp => 가입하기 버튼(submit) 클릭 시 최종 확인을 위한 변수
let idcheck = 0;
let pwdcheck = 0;
let phonecheck = 0;
 
// member_input.jsp => 회원가입 때 아이디 중복체크
function userid_check(my) {
	var id = my.value;
	
	if(id.trim() == "") {	// ID 입력칸이 비었을 경우
		document.getElementById('idError').innerText = "아이디를 입력하세요.";
		document.getElementById('idError').style.color = "red";
		idcheck = 0;
		my.focus();
	} else {		
		var chk = new XMLHttpRequest();
		chk.open("get", "userid_check.jsp?userid="+id);
		chk.send();
		
		chk.onreadystatechange = function(){
			if(chk.readyState == 4) {
				
				// 사용가능하면 responseText = 0
				if(chk.responseText.trim() == 0) {
					document.getElementById('idError').innerText = "사용 가능한 아이디";
					document.getElementById('idError').style.color = "green";
					document.getElementById('idError').style.visibility = "visible";
					idcheck = 1;
				} else {
					document.getElementById('idError').innerText = "사용 불가능한 아이디";
					document.getElementById('idError').style.color = "red";
					document.getElementById('idError').style.visibility = "visible";
					idcheck = 2;
				}
			}
		}
	}
}

// member_input.jsp => 회원가입 때 비밀번호 확인 체크
function pwd_check(passwd) {
	var pwd2 = passwd.value;
	var pwd = document.memeberInputForm.pwd.value;
	
	if(pwd == pwd2) {
		document.getElementById('pwdError').innerText = "비밀번호가 일치합니다";
		document.getElementById('pwdError').style.color = "green";
		document.getElementById('pwdError').style.visibility = "visible";
		pwdcheck = 1;
	} else {
		document.getElementById('pwdError').innerText = "비밀번호가 일치하지 않습니다.";
		document.getElementById('pwdError').style.color = "red";
		document.getElementById('pwdError').style.visibility = "visible";
		pwdcheck = 0;
	}
	
	if(pwd.trim() == "")	pwdcheck=0;
}

// member_input.jsp => 회원가입 때 전화번호 숫자만 입력하도록
function phone_check(my) {
	my.value = my.value.replace(/[^0-9]/g, "");
	
	if(my.value.length > 8)
		phonecheck = 1;
	else
		phonecheck = 0;
}
function phone_lenCheck(my) {
	if(my.value.length < 10) {
		document.getElementById('phoneError').innerText = "연락처 길이가 짧습니다.";
	} else {		
		document.getElementById('phoneError').innerText = "";
	}
}

// member_input.jsp => 가입하기 버튼(submit) 클릭 시 최종 확인
function final_check(my) {
	if(idcheck == 0) {
		console.log(idcheck);
		document.getElementById('idError').innerText = "아이디를 입력하세요.";
		return false;
	}
	else if(idcheck == 2) {
		console.log(idcheck);
		document.getElementById('idError').innerText = "중복된 아이디 입니다.";
		return false;
	}
	else if(pwdcheck == 0) {
		console.log(pwdcheck);
		document.getElementsByClassName('pwdError')[0].innerText = "비밀번호를 입력하세요.";
		return false;
	}
	else {
		return true;
	}
}


// member_update.jsp
function member_update() {
	document.memberUpdateForm.userid.disabled = false;
}

// pwd_change.jsp => 기존 비밀번호와 신규 비밀번호가 같은지 확인
function newpwd_check(my) {
	var oldpwd = my.oldpwd.value;
	var newpwd = my.newpwd.value;
	var newpwd2 = my.newpwd2.value;
	console.log(oldpwd);
	console.log(newpwd);
	console.log(newpwd2);
	
	//return false;
	if((oldpwd == newpwd) || (oldpwd == newpwd2)) {
		console.log("oldpwd == newpwd");
		document.getElementById('pwdError').innerText = "기존비밀번호와 신규비밀번호가 동일합니다.";
		return false;
	}
	else if(newpwd != newpwd2) {
		console.log("newpwd != newpwd2");
		document.getElementById('pwdError').innerText = "신규비밀번호가 일치하지 않습니다.";
		return false;
	}
	else {
		return true;
	}
}


// member_find.jsp => userid 찾기
function userid_search() {
	var idform = document.idsearchform;
	var username = document.idsearchform.name.value;
	var phone = document.idsearchform.phone.value;
	//console.log(idform +" "+ username +" "+ phone);
	var fdata = new FormData(idform);
	console.log(fdata);
	
	if((username.trim() == "") || (phone.trim() == "")) {
		document.getElementById('idErr').innerText = "모든 항목을 입력하세요.";
	}
	else {
		document.getElementById('idErr').innerText = "";
		
		var idChk = new XMLHttpRequest();
		idChk.open("GET", "userid_search.jsp", true);
		idChk.send(fdata.getFormData());
		
		idChk.onreadystatechange == function() {
			if(idChk.readyState == 4) {
				console.log(idChk.responseText.trim());
				
				if(idChk.responseText.trim() == 0) {
					document.getElementById('idErr').innerText = "일치하는 아이디 정보가 없습니다.";
				} else {
					document.getElementById('idErr').innerText = "ID : " + idChk.responseText.trim();
				}
				
			}
		} 
	}
}


// 회원가입/로그인 시 아이디 입력 가능한 문자 제한
function useridCharacterCheck(my) {
	my.value = my.value.replace(/[^a-zA-Z0-9]/g, "");
}
