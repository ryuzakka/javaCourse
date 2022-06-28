<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<style>
	body {
		margin-top:70px;
	}
	form {
		text-align:center;
	}
	.login input {
		width:300px;
		height:40px;
		border:1px solid purple;
	}
	.login input[type=submit] {
		width:306px;
		background:#d38aff;
		color:white;
		border:1px solid white;
	}
	.login input[type=submit]:hover {
		width:306px;
		background:purple;
		color:white;
	}
	#search {
		text-align:center;
	}
	#userid , #pwd {
		display:inline-block;
		width:130px;
		height:22px;
		border:1px solid #dddddd;
		padding-top:3px;
		font-size:13px;
		cursor:pointer;
	}
	#userid_search {
		margin-top:40px;
		display:none;
	}
	#userid_search .outline {
		margin:auto;
		width:400px;
		border:1px solid #d38aff;
		background:lavender;
	}
	#userid_search #search_result {
		font-size:14px;
		text-align:center;
		margin-top:20px;
	}
</style>
<script>
	function showIdSearch() {
		document.getElementById('userid_search').style.display = "block";
		document.getElementsByClassName('outline')[0].style.height = 200+"px";
		document.getElementById('search_title').innerText = "아이디 찾기";
		document.getElementById('search_result').style.display = "none";
		document.getElementById('search_result').innerText = "";
		document.us.style.display = "block";
		document.us.idSearchBtn.type = "button";
		document.us.pwdSearchBtn.type = "hidden";
		document.us.userid.type = "hidden";
		document.us.userid.value = "";
		document.us.name.value = "";
		document.us.phone.value = "";
	}
	function showPwdSearch() {
		document.getElementById('userid_search').style.display = "block";
		document.getElementsByClassName('outline')[0].style.height = 240+"px";
		document.getElementById('search_title').innerText = "비밀번호 찾기";
		document.getElementById('search_result').style.display = "none";
		document.getElementById('search_result').innerText = "";
		document.us.style.display = "block";
		document.us.idSearchBtn.type = "hidden";
		document.us.pwdSearchBtn.type = "button";
		document.us.userid.type = "text";
		document.us.userid.value = "";
		document.us.name.value = "";
		document.us.phone.value = "";
	}
</script>
</head>
<body>
	
	<div class="login" align="center">
		<h2>로 그 인</h2>
		<form method="post" action="login_ok.jsp">
			<input type="text" name="userid" placeholder="아이디" required> <p>
			<input type="password" name="userpwd" placeholder="비밀번호" required> <p>
			<input type="submit" value="로그인하기"> <br>
			<a href="main.jsp" style="font-size:12px">메인으로</a><p>
		</form>
	</div>
	
	<div id="search">
		<div id="userid" onclick="showIdSearch()"> 아이디 찾기 </div>
		<div id="pwd" onclick="showPwdSearch()"> 비밀번호 찾기 </div>
	</div>
	
	<div id="userid_search">
		<div class="outline">
			<form name="us">
				<h5 id="search_title"></h5>
				<input type="hidden" name="userid" placeholder="아이디"> <p>
				<input type="text" name="name" placeholder="이 름"> <p>
				<input type="text" name="phone" placeholder="전화번호"> <p>
				<input type="button" name="idSearchBtn" value="아이디 찾기" onclick="search_userid()"> <p>
				<input type="button" name="pwdSearchBtn" value="비밀번호 찾기" onclick="search_userpwd()"> <p>
			</form>
			<div id="search_result"></div>
		</div>
	</div>
	
	<script>
		function search_userid() {
			var name = document.us.name.value;
			var phone = document.us.phone.value;
			var order = "name="+name + "&phone="+phone;
			
			//location = "userid_search.jsp?"+order;
			var chk = new XMLHttpRequest();
			chk.open("get", "userid_search.jsp?"+order);
			chk.send();
			
			chk.onreadystatechange = function() {
				if(chk.readyState == 4) {
					document.getElementById('search_result').innerText = chk.responseText.trim();
				}
			}
			
			document.us.style.display = "none";
			document.getElementById('search_result').style.display = "block";
			document.getElementsByClassName('outline')[0].style.height = 65+"px";
		}
		
		function search_userpwd() {
			var id = document.us.userid.value;
			var name = document.us.name.value;
			var phone = document.us.phone.value;
			var order = "id="+id + "&name="+name + "&phone="+phone;
			
			var chk2 = new XMLHttpRequest();
			chk2.open("get", "userpwd_search_new.jsp?"+order);
			chk2.send();
			
			chk2.onreadystatechange = function() {
				if(chk2.readyState == 4) {
					document.getElementById('search_result').innerText = chk2.responseText.trim();
				}
			}
			
			document.us.style.display = "none";
			document.getElementById('search_result').style.display = "block";
			document.getElementsByClassName('outline')[0].style.height = 65+"px";
		}
	</script>
</body>
</html>