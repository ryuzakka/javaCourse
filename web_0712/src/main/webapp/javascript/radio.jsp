<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>js/radio</title>
<style>
	.sub {
		display:none;
	}
	.on {
		display:block;
	}
</style>
<script>
	window.onchange = function () {
		var radioBtn = document.getElementsByName('chk');
		var subClass = document.getElementsByClassName('sub');
		
		for(i=0; i<radioBtn.length; i++) {
			if(radioBtn[i].checked)
				subClass[i].classList.add('on');
			else
				subClass[i].classList.remove('on');
		}
	}
</script>
</head>
<body>
	
	<div>
		<input type="radio" name="chk" checked>계좌이체
		<input type="radio" name="chk">신용카드
		<input type="radio" name="chk">핸드폰결제
		<input type="radio" name="chk">현금지급
		<input type="radio" name="chk">외상
	</div>
	
	<hr>
	
	<div class="sub on"> 계좌이체 관련 내용 </div>
	<div class="sub"> 신용카드 관련 내용 </div>
	<div class="sub"> 핸드폰결제 관련 내용 </div>
	<div class="sub"> 현금지급 관련 내용 </div>
	<div class="sub"> 외상 관련 내용 </div>
	
</body>
</html>